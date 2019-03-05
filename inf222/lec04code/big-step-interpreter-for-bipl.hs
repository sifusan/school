-- big-step interpreter for BIPL

import Prelude hiding (lookup)

-- Statements
data Stmt
  = Skip
  | Assign String Expr
  | Seq Stmt Stmt
  | If Expr Stmt Stmt
  | While Expr Stmt
  deriving Show

-- Expressions
data Expr
  = IntConst Int
  | BoolConst Bool
  | Var String
  | Unary UOp Expr
  | Binary BOp Expr Expr
  deriving Show

-- Unary and binary operators
data UOp = Negate | Not
         deriving Show
data BOp = Add | Sub | Mul | Lt | Leq | Eq | Geq | Gt | And | Or
         deriving Show

data Val = VBool Bool | VInt Int | VUndefined 
         deriving (Eq) 

instance Show Val where
  show (VBool b) = show b
  show (VInt i) = show i
  show (VUndefined) = "undefined"
  
type Store = [(String, Val)]

exec :: Stmt -> (Store -> Store)
exec Skip st = st
exec (Assign n e) st = (n, eval e st) : st
exec (Seq s1 s2) st = (exec s2 (exec s1 st))
exec (If e s1 s2) st = case eval e st of
  VBool True -> exec s1 st
  VBool False -> exec s2 st
exec (While e s) st = exec (If e (Seq s (While e s)) Skip) st

eval :: Expr -> (Store -> Val)
eval (IntConst i) _ = VInt i
eval (BoolConst i) _ = VBool i
eval (Var n) st = case lookup n st of
  Just v -> v
  Nothing -> error $ "unknown variable"
eval (Unary o e) st = uop o (eval e st)
eval (Binary o e1 e2) st = bop o (eval e1 st) (eval e2 st)


uop Negate (VInt i) = VInt (negate i)
uop Not (VBool b) = VBool (not b)
  
bop Add (VInt a) (VInt b) = VInt $ a + b
bop Sub (VInt a) (VInt b) = VInt $ a - b
bop Mul (VInt a) (VInt b) = VInt $ a * b
bop Lt (VInt a) (VInt b) = VBool $ a < b
bop Leq (VInt a) (VInt b) = VBool $ a <= b
bop Eq (VInt a) (VInt b) = VBool $ a == b
bop Geq (VInt a) (VInt b) = VBool $ a >= b
bop Gt (VInt a) (VInt b) = VBool $ a > b
bop And (VBool a) (VBool b) = VBool $ a && b
bop Or (VBool a) (VBool b) = VBool $ a || b

lookup :: Eq a => a -> [(a, b)] -> Maybe b
lookup _ [] = Nothing
lookup x ((a, b):_) | x == a = Just b
lookup x (_:xs) = lookup x xs

fact =
  Seq
  (Assign "n" (IntConst 10))
  (Seq
    (Assign "r" (IntConst 1))
    (While
      (Binary Gt (Var "n") (IntConst 1))
      (Seq      
        (Assign "r" (Binary Mul (Var "r") (Var "n")))
        (Assign "n" (Binary Sub (Var "n") (IntConst 1))))))
  
main = do 
  let (Just v) = lookup "r" (exec fact [])
  print v
