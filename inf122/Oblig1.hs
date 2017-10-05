--Name: Simen Fuglestad

--module Oblig1 where
import Data.Char
import Data.List.Split
import Data.List

{-

equals_ :: Parser ()
equals_ [] = error "equals_: expcted = but got end of input"
equals_ ("=":ss) = ((),ss)
equals_ (s:ss) = error $ "equals_: expected = but got "++s

parseExpr :: [String] -> (Ast, [String])
parseExpr []                     = error "invalid input"
parseExpr (x:xs) | all isDigit x = (Nr (read x), xs)
                 | x == "-"      = (Min (fst(parseExpr xs)), xs)

                 | x == "+"      = (Sum (fst(parseExpr xs))
                                        (fst(parseExpr(snd(parseExpr xs)))),
                                        xs)

                 | x == "*"      = (Mul (fst(parseExpr xs))
                                        (fst(parseExpr(snd(parseExpr xs)))),
                                        xs)
-}
data Ast = Nr Int | Sum Ast Ast | Mul Ast Ast | Min Ast
                  | If Ast Ast Ast deriving (Eq, Show)

mapParser :: (Ast -> Ast) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String]))
mapParser f p = \x -> let
                        (a,y) = p x
                        in (f a,y)

--SPØR OM parseExpr må ta String og ikke [String]!!!!!!!!!!
parseExpr :: [String] -> (Ast,[String])
parseExpr [] = error "invalid input"
parseExpr (x:xs)   | all isDigit x = (Nr (read x),xs)
                    | x == "-" = mapParser Min parseExpr xs
                    | x == "+" = liftParser Sum parseExpr parseExpr xs
                    | x == "*" = liftParser Mul parseExpr parseExpr xs
                    | x == "if"= liftParser' If parseExpr parseExpr parseExpr xs

liftParser :: (Ast -> Ast -> Ast) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String]))
liftParser f p1 p2 = \x -> let
                            (a,y) = p1 x
                            (b,z) = p2 y
                            in (f a b, z)

liftParser' :: (Ast -> Ast -> Ast -> Ast) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String])) ->
                ([String] -> (Ast, [String]))
liftParser' f p1 p2 p3 = \x -> let
                                (a, y) = p1 x
                                (b, z) = p2 y
                                (c, w) = p3 z
                                in (f a b c, w)

cleanString :: [String] -> [String]
cleanString [] = []
cleanString xs |  (head xs == ",") ||
                  (head xs == "")       = cleanString (drop 1 xs)
               | otherwise              = head xs : cleanString(tail xs)

tokenize :: String -> [String]
tokenize xs = cleanString(splitOn " " xs)

parse :: String -> Ast
parse xs =  fst(parseExpr(tokenize xs))

realJob :: Ast -> (Int, Bool)
realJob (Nr n)      | n `mod` 2 /= 0 = (n, True)
                    | otherwise = (n, False)

realJob (Sum x y)   = (fst(realJob x) + fst(realJob y),
                        snd(realJob x) || snd(realJob y))

realJob (Min x)     = (- fst(realJob x), not(snd(realJob x)))

realJob (Mul x y)   = (fst(realJob x) * fst(realJob y),
                        snd(realJob x) && snd(realJob y))

realJob (If x y z)  | fst(realJob x) == 0 = realJob y
                    | otherwise           = realJob z

evi :: String -> Int
evi s = fst(realJob(parse s))

evb :: String -> Bool
evb s = snd(realJob(parse s))
