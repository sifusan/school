-- This is the BIPL compiler implementation shown in
-- Lämmel, Section 5.4

import qualified BIPLDefinitions as BIPL
import qualified ALDefinitions as AL
import qualified MLDefinitions as ML

import Data.List (nub, findIndex)
import Data.Maybe (fromJust)

import qualified Data.Map as M

--------------
-- Compiler --
--------------

lbl :: Int -> String
lbl n = "L" ++ show n

compile :: BIPL.Stmt -> [AL.Instr]
compile s = fst (cStmt s 0)

cStmt :: BIPL.Stmt -> Int -> ([AL.Instr], Int)
cStmt BIPL.Skip l = ([], l)
cStmt (BIPL.Assign x e) l = (cExpr e ++ [AL.Store x], l)
cStmt (BIPL.Seq s1 s2) l0 = 
  let 
    (zs1, l1) = cStmt s1 l0
    (zs2, l2) = cStmt s2 l1
  in (zs1 ++ zs2, l2)
cStmt (BIPL.If e s1 s2) l0 = 
  let l1 = l0 + 1 
      (zs1, l2) = cStmt s1 (l1 + 1)
      (zs2, l3) = cStmt s2 l2
  in (cExpr e 
       ++ (AL.CJump (lbl l0) : zs2)
       ++ (AL.Jump (lbl l1) : (AL.Label (show l0) : zs1))
       ++ [AL.Label (lbl l1)], l3)
cStmt (BIPL.While e s) l0 = 
  let l1 = l0 + 1
      (zs, l2) = cStmt s (l1 + 1)
  in ([AL.Label (lbl l0)] ++ cExpr e
     ++ (AL.Not : (AL.CJump (lbl l1) : zs))
     ++ [AL.Jump (lbl l0), AL.Label (lbl l1)], l2)

cExpr :: BIPL.Expr -> [AL.Instr]
cExpr (BIPL.IntConst i) = [AL.Const i]
cExpr (BIPL.Var x) = [AL.Load x]
cExpr (BIPL.Unary BIPL.Negate e) = cExpr (BIPL.Binary BIPL.Sub (BIPL.IntConst 0) e)
cExpr (BIPL.Unary BIPL.Not e) = cExpr e ++ [AL.Not]
cExpr (BIPL.Binary o e1 e2) = cExpr e1 ++ cExpr e2 ++ 
  [ case o of 
      BIPL.Add -> AL.Add
      BIPL.Sub -> AL.Sub
      BIPL.Mul -> AL.Mul
      BIPL.Gt -> AL.Gt
  ]

---------------
-- Assembler --
---------------

assemble :: [AL.Instr] -> [ML.Instr]
assemble zs = concat (map f zs)
  where
    f (AL.Const i) = [ML.Const i]
    f (AL.Store x) = [ML.Store (address x)]
    f (AL.Load x) = [ML.Load (address x)]
    f (AL.Label _) = []
    f (AL.Jump x) = [ML.Jump (counter x)]
    f (AL.CJump x) = [ML.CJump (counter x)]
    f AL.Not = [ML.Not]
    f AL.Add = [ML.Add]
    f AL.Sub = [ML.Sub]
    f AL.Mul = [ML.Mul]
    f AL.Gt = [ML.Gt]

    address :: String -> Int
    address x = fromJust (findIndex (==x) symbols)
      where
        symbols = nub (concat (map symbol zs))
        symbol (AL.Store x) = [x]
        symbol _ = []

    counter :: String -> Int
    counter x = counter' 0 zs
      where
        counter' i (AL.Label x' : zs) =
          if x == x' then i else counter' i zs
        counter' i (_:zs) = counter' (i+1) zs

---------------------
-- Virtual machine --
---------------------

type Store = M.Map Int Int
type Stack = [Int]

run :: [ML.Instr] -> (Store, Stack)
run zs0 = run' zs0 M.empty []
  where
    run' :: [ML.Instr] -> Store -> Stack -> (Store, Stack)
    run' [] sto sta = (sto, sta)
    run' (z:zs) sto sta =
      let (zs', sto', sta') = step z
      in run' zs' sto' sta'
      where
        step :: ML.Instr -> ([ML.Instr], Store, Stack)
        step (ML.Const i) = (zs, sto, i : sta)
        step (ML.Store i) = (zs, M.insert i (head sta) sto, tail sta)
        step (ML.Load i) = (zs, sto, sto M.! i : sta)
        step (ML.Jump i) = (drop i zs0, sto, sta)
        step (ML.CJump i) =
          if head sta /= 0
          then (drop i zs0, sto, tail sta)
          else (zs, sto, tail sta)
        step ML.Not = (zs, sto, stUop (\i -> if i == 0 then 1 else 0) sta)
        step ML.Add = (zs, sto, stBop (+) sta)
        step ML.Sub = (zs, sto, stBop (-) sta)
        step ML.Mul = (zs, sto, stBop (*) sta)                
        step ML.Gt = (zs, sto, stBop (\i j -> if i > j then 1 else 0) sta)                

stUop :: (Int -> Int) -> Stack -> Stack
stUop f (i:sta) = f i : sta

stBop :: (Int -> Int -> Int) -> Stack -> Stack
stBop f (i2:i1:sta) = f i1 i2 : sta

main = do
  putStrLn "- a factorial program -------"
  print fact
  putStrLn "\n- compiled program ----------"
  putStr (showlines (compile fact))
  putStrLn "\n- assembled program ---------"
  putStr (showlines (assemble (compile fact)))
  putStrLn "\n- result --------------------"
  print (run (assemble (compile fact)))

fact =
  BIPL.Seq
  (BIPL.Assign "n" (BIPL.IntConst 10))
  (BIPL.Seq
    (BIPL.Assign "r" (BIPL.IntConst 1))
    (BIPL.While
      (BIPL.Binary BIPL.Gt (BIPL.Var "n") (BIPL.IntConst 0))
      (BIPL.Seq      
        (BIPL.Assign "r" (BIPL.Binary BIPL.Mul (BIPL.Var "r") (BIPL.Var "n")))
        (BIPL.Assign "n" (BIPL.Binary BIPL.Sub (BIPL.Var "n") (BIPL.IntConst 1))))))

showlines [] = ""
showlines (a:as) = show a ++ "\n" ++ showlines as
