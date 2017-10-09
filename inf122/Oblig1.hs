--Name: Simen Fuglestad
--module Oblig1 where
import Data.Char
import Data.List.Split
import Data.List

data Ast = Nr Int | Var String | Sum Ast Ast | Mul Ast Ast | Min Ast
                  | If Ast Ast Ast | Let String Ast Ast  deriving (Eq, Show)

parseExpr :: [String] -> (Ast,[String])
parseExpr []  = error "invalid input"
parseExpr (x:xs) | all isDigit x = (Nr (read x), xs)
                 | x == "-"      = liftParser1 Min parseExpr xs
                 | x == "+"      = liftParser2 Sum parseExpr parseExpr xs
                 | x == "*"      = liftParser2 Mul parseExpr parseExpr xs
                 | x == "if"     = liftParser3 If parseExpr parseExpr parseExpr xs
                 | x == "let"    = parseLet Let (head xs) parseExpr parseExpr (tail xs)
                 | isLetter(head x) && isUpper (head x) = (Var x, xs)

type Parser a = [String] -> (a, [String])

parseLet :: (String -> a -> b -> c) -> String -> Parser a -> Parser b -> Parser c
parseLet f s p1 p2 x = let (a,y) = p1 x
                           (b,z) = p2 y
                           in (f s a b, z)

liftParser1 :: (a -> b) -> Parser a -> Parser b
liftParser1 f p x = let (a,y) = p x in (f a,y)

liftParser2 :: (a -> b -> c) -> Parser a -> Parser b -> Parser c
liftParser2 f p1 p2 x = let (a,y) = p1 x
                            (b,z) = p2 y
                            in (f a b, z)

liftParser3 :: (a -> b -> c -> d) -> Parser a -> Parser b -> Parser c -> Parser d
liftParser3 f p1 p2 p3 x = let (a, y) = p1 x
                               (b, z) = p2 y
                               (c, w) = p3 z
                               in (f a b c, w)

cleanString :: [String] -> [String]
cleanString [] = []
cleanString xs |  (head xs == ",") || (head xs == "")  || (head xs == "=") ||
                  (head xs == "in")     = cleanString (drop 1 xs)
               | otherwise              = head xs : cleanString(tail xs)

tokenize :: String -> [String]
tokenize xs = cleanString(splitOn " " xs)

{-
SOLUTION TO UNDECLARED VARIABLES
postProcess is used together with checkBoundValue to determine if all
variables are in fact bound. postProcess traverses the AST produced by the
function parse and returns the exact same AST as long as long as
checkBoundValue does not
produce an error
-}

postProcess :: Ast -> [(String, Ast)] -> Ast
postProcess (Nr n) xs      = (Nr n)
postProcess (Sum x y) xs   = (Sum (postProcess x xs) (postProcess y xs))
postProcess (Mul x y) xs   = (Mul (postProcess x xs) (postProcess y xs))
postProcess (Min x) xs     = (Min (postProcess x xs))
postProcess (If x y z) xs  = (If (postProcess x xs) (postProcess y xs) (postProcess z xs))
postProcess (Let s x y) xs = (Let s (postProcess x xs) (postProcess y ((s, (postProcess x xs)): xs)))
postProcess (Var s) xs     = (Var (fst(checkBoundValue s xs)))

--checkBoundValue
checkBoundValue :: String -> [(String, Ast)] -> (String, Ast)
checkBoundValue s []  = error ("variable " ++ s ++ " not bound")
checkBoundValue s (x:xs)    | s == fst x   = x
                            | otherwise    = checkBoundValue s xs
parse :: String -> Ast
parse xs =  postProcess(fst(parseExpr(tokenize xs))) []

realJob :: Ast -> [(String, Int)] -> (Int, Bool)
realJob (Nr n) xs      | even n = (n, False)
                       | otherwise = (n, True)
realJob (Sum x y) xs   = (fst(realJob x xs)   + fst(realJob y xs),
                            snd(realJob x xs) || snd(realJob y xs))

realJob (Min x) xs     = (- fst(realJob x xs), not(snd(realJob x xs)))
realJob (Mul x y) xs   = (fst(realJob x xs)   * fst(realJob y xs),
                            snd(realJob x xs) && snd(realJob y xs))

realJob (If x y z) xs  | fst(realJob x xs) == 0 &&
                         snd(realJob x xs)            = (fst(realJob y xs), snd(realJob z xs))
                       | (fst(realJob x xs) /= 0) ||
                         (snd(realJob x xs))            = (fst(realJob z xs), snd(realJob y xs))
                       | otherwise                      = realJob z xs

realJob (Let s x y) xs = realJob y ((s, fst(realJob x xs)) : xs)
realJob (Var s) xs     = realJob (Nr (findBoundValue s xs)) xs

findBoundValue :: String -> [(String, Int)]-> Int
findBoundValue _ []  = error "variable not bound"
findBoundValue s (x:xs) | s == fst x    = snd x
                        | otherwise     = findBoundValue s xs

evi :: String -> Int
evi s = fst(realJob(parse s) [])

evb :: String -> Bool
evb s = snd(realJob(parse s) [])
