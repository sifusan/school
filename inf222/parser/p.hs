import Prelude hiding(return, (>>=), (>>))
import Data.Char
newtype Parser a = P (String -> [(a, String)])

parse :: Parser a -> String -> [(a, String)]
parse (P f) inp = f inp 

return :: a -> Parser a
return v = P (\inp -> [(v,inp)])

item :: Parser Char
item = P (\inp -> case inp of
                  [] -> [] 
                  (c:inp') -> [(c,inp')])

item_n :: Int -> Parser Char 
item_n n = P (\inp -> case inp of
                         []     -> []
                         (inp') -> [((inp' !! n), inp')])
failure ::  Parser a
failure = P (\_ -> [])

(<|>) :: Parser a -> Parser a -> Parser a
p <|> q = P (\inp -> case parse p inp of
                        []      -> parse q inp
                        x       -> x)

(>>=) :: Parser a -> (a -> Parser b) -> Parser b 
p >>= f = P (\inp -> case parse p inp of 
                        []          ->[]
                        [(v, inp')] -> parse (f v) inp') 

(>>) :: Parser a -> Parser b -> Parser b
p >> q = p >>= \_ -> q

sat :: (Char -> Bool) -> Parser Char
sat p = item >>= \v -> if (p v)
                       then return v
                       else failure

digit           = sat isDigit
lower           = sat isLower
upper           = sat isUpper
letter          = sat isAlpha
alphanum        = sat isAlphaNum

char x = sat (==x)

string :: String -> Parser String
string []         = return []
string s@(x:xs)   = char x >> string xs >> return s 

many1 :: Parser a -> Parser [a]
many1 p = 
        p >>= \v -> 
        many p >>= \vs ->
        return (v:vs)

many :: Parser a -> Parser [a]
many p = many1 p <|> return []

identifier :: Parser String
identifier = 
        lower >>= \c ->
        many (alphanum <|> char '_' <|> char '$') >>= \cs ->
        return (c:cs)


sepBy :: Parser a -> Parser b -> Parser [a]
p `sepBy` sep =
        (p `sepBy1` sep) <|> return []

sepBy1 :: Parser a -> Parser b -> Parser [a]
p `sepBy1` sep =
        p >>= \v ->
        many (sep >> p) >>= \vs ->
        return (v:vs)


nat :: Parser Integer
nat = many1 digit >>= \s -> return (read  s)

space :: Parser ()
space = many (sat isSpace) >> return ()

token :: Parser a -> Parser a
token p =
        p >>= \v ->
        space >>
        return v 
