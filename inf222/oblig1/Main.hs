module Main where

import Data.Char (isAlpha, isAlphaNum, isDigit)
import System.Environment (getArgs)

data Token = TVariable Loc String
           | TIntLiteral Loc Int
           | TBoolLiteral Loc Bool
           | TKeyword Loc String
           | TOperator Loc String 
           | TPunctuation Loc String
           
data Loc = Loc String Int Int -- Filename, Row, Col

instance Show Loc where
  show (Loc str row col) = str ++ ":" ++  (show row) ++ ":" ++ (show col)

instance Show Token where
  show (TVariable loc str) = (show loc) ++ ":" ++ str 
  show (TIntLiteral loc i) = (show loc) ++ ":" ++ (show i)
  show (TBoolLiteral loc b) = (show loc) ++ ":" ++ (show b)
  show (TKeyword loc str) = (show loc) ++ ":" ++ str
  show (TOperator loc str) = (show loc) ++ ":" ++ str
  show (TPunctuation loc str) = (show loc) ++ ":" ++ str

data Parser b a = P (b -> [(a, b)])

parse :: Parser b a -> b -> [(a, b)]
parse (P p) inp = p inp

runParser p state inp = case parse p (state, inp) of
                          [] -> error "parsing failed"
                          [(a, _)] -> a 

instance Functor (Parser b) where  
  fmap f p = P $ \inp -> case parse p inp of
                           [] -> []
                           [(v, inp')] -> [(f v, inp')]

instance Applicative (Parser b) where  
  pure v = P $ \inp -> [(v, inp)]
  p <*> q = P $ \inp ->
    case parse p inp of
      [] -> []
      [(f, inp')] -> case parse q inp' of
                       [] -> []
                       [(v, inp'')] -> [(f v, inp'')]

instance Monad (Parser b) where
  p >>= f = P $ \inp -> case parse p inp of
                          [] -> []
                          [(v, inp')] -> parse (f v) inp'

(<|>) :: Parser b a -> Parser b a -> Parser b a
p <|> q  = P (\inp -> case parse p inp of
                      [] -> parse q inp
                      x  -> x)

failure :: Parser b a
failure = P (\_ -> [])

many :: Parser b a -> Parser b [a]
many p = many1 p <|> return []

many1 :: Parser b a -> Parser b [a]
many1 p = p >>= \v ->
          many p  >>= \vs ->
          return (v:vs)

sat :: (Char -> Bool) -> Lexer Char
sat p = item >>= \v -> if (p v)
                  then return v
                  else failure 

digit :: Lexer Char
digit = sat isDigit

letter :: Lexer Char
letter = sat isAlpha 

alphanum :: Lexer Char
alphanum = sat isAlphaNum

char :: Char -> Lexer Char
char c = sat (==c)
string :: String -> Lexer String
string []        = return []
string s@(x:xs)  = char x >> string xs >> return s

-- Lexer specific definitions
type Lexer a = Parser (Loc, String) a

getLocRow :: Loc -> Int
getLocRow (Loc _ r _ ) = r

getLocFile :: Loc -> String
getLocFile (Loc f _ _) = f

getLocCol :: Loc -> Int
getLocCol (Loc _ _ c ) = c

item :: Lexer Char
item = P(\inp -> case inp of
                 (l, (c:s)) -> (case c of
                                     '\n' -> [(c, ((Loc file row col), s))]
                                               where row = getLocRow(l) + 1
                                                     file = getLocFile(l)
                                                     col = 0
                                     c    -> [(c, ((Loc file row col), s ))]
                                               where row = getLocRow(l)
                                                     file = getLocFile(l)
                                                     col = getLocCol(l) + 1
                               ) 
                                    
                 (l, _)    -> []
        )

startLoc fn = Loc fn 1 0

getState :: Parser b b
getState = P(\inp -> case inp of (l,s) -> [])

setState :: b -> Parser b ()
setState = undefined

getLoc :: Lexer Loc
getLoc = undefined

lookahead :: Parser b a -> Parser b a
lookahead = undefined

notFollowedBy :: Parser b a -> Parser b ()
notFollowedBy = undefined

tokens :: Lexer [Token]
tokens = ws >> many (token >>= \t -> ws >> return t)

tokens' :: Lexer (Bool, Loc, [Token], String)
tokens' = 
  tokens >>= \ts ->
  getState >>= \(loc, inp) ->
  ((notFollowedBy item >> return True) <|> return False) >>= \success ->
  return (success, loc, ts, inp)

token :: Lexer Token
token = undefined
ws :: Lexer String
ws = undefined

lineComment :: Lexer String -- or Lexer ()
lineComment = undefined
blockComment :: Lexer String -- or Lexer ()
blockComment = undefined

oneWs :: Lexer Char -- or Lexer () 
oneWs = undefined
-- accepts one whitespace character or one comment

intLiteral :: Lexer Token
intLiteral = undefined

operator :: Lexer Token
operator = undefined

punctuation :: Lexer Token
punctuation = undefined

variableOrKeyword :: Lexer Token
variableOrKeyword = undefined

main :: IO ()
main = do  
   [filename] <- getArgs -- fails unless exactly one command line argument
   contents <- readFile filename
   tokenize' filename contents >>= mapM_ print

tokenize' :: String -> String -> IO [Token]
tokenize' filename contents = do
   let (success, loc, ts, inp) = runParser tokens' (startLoc filename) contents
   if success then return ts
              else do putStrLn $ "Unrecognized token starting with " ++
                                 take 10 inp ++ " at location " ++ show loc
                      return []

tokenize :: String -> IO ()
tokenize inp = tokenize' "-" inp >>= mapM_ print
