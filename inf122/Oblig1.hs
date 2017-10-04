--Name: Simen Fuglestad

--module Oblig1 where
import Data.Char
import Data.List.Split
import Data.List

{-
type Parser a = [String] -> (a,[String])

pmap :: (a -> b) -> Parser a -> Parser b
pmap f p = \ss -> let (a,ss') = p ss
                  in (f a,ss')

liftP2 :: (a -> b -> c) -> Parser a -> Parser b -> Parser c
liftP2 f p1 p2 = \ss0 -> let
                (a,ss1) = p1 ss0
                (b,ss2) = p2 ss1
                in (f a b, ss2)

equals_ :: Parser ()
equals_ [] = error "equals_: expcted = but got end of input"
equals_ ("=":ss) = ((),ss)
equals_ (s:ss) = error $ "equals_: expected = but got "++s

parseExpr :: [String] -> (Ast,[String])
parseExpr [] = error "unexpected end of input"
parseExpr (s:ss)    | all isDigit s = (Nr (read s),ss)
                    | s == "-" = pmap Min parseExpr ss
                    | s == "+" = liftP2 Sum parseExpr parseExpr ss
                    | s == "*" = liftP2 Mul parseExpr parseExpr ss

-}
data Ast = Nr Int | Sum Ast Ast | Mul Ast Ast | Min Ast | If Ast Ast Ast deriving (Eq, Show)

cleanString :: [String] -> [String]
cleanString [] = []
cleanString xs |  (xs !! 0 == ",") ||
                  (xs !! 0 == "")       = cleanString (drop 1 (xs))
               | otherwise              = [head(xs)] ++ cleanString(tail (xs))

tokenize :: String -> [String]
tokenize xs = cleanString(splitOn " " xs)

--SPØR OM parseExpr må ta String og ikke [String]!!!!!!!!!!
parseExpr :: [String] -> (Ast, [String])
parseExpr []                     = error "invalid input"
parseExpr (x:xs) | all isDigit x = (Nr (read x), xs)
                 | x == "-"      = (Min (fst(parseExpr(xs))), xs)
                 | x == "+"      = (Sum (fst(parseExpr(xs))) (fst(parseExpr(snd(parseExpr(xs))))), xs)
                 | x == "*"      = (Mul (fst(parseExpr(xs))) (fst(parseExpr(snd(parseExpr(xs))))), xs)

parse :: String -> Ast
parse xs =  fst(parseExpr(tokenize(xs)))

type RealJobValue a = (Int, Bool)

realJob :: Ast -> (Int, Bool)
realJob (Nr n)     | n `mod` 2 /= 0 = (n, True)
                    | otherwise = (n, False)
realJob (Sum x y)  = ((fst(realJob(x))) + (fst(realJob(y))), (snd(realJob(x))) || (snd(realJob(y))))
realJob (Min x)    = (-(fst(realJob(x))), not(snd(realJob(x))))
realJob (Mul x y)  = ((fst(realJob(x))) * (fst(realJob(y))), (snd(realJob(x))) && (snd(realJob(y))))

evi :: String -> Int
evi s = fst(realJob(parse(s)))

evb :: String -> Bool
evb s = snd(realJob(parse(s)))
