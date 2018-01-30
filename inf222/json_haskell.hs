data Val v = Stringval String | Boolval Bool | Intval Integer | Numberval Numdata deriving Show

data Numdata n = Numsign Sign
             | Numval Integer
             | Numfrac Integer Numdata
             | Numexp Exp Numdata deriving Show

data Sign = Bool deriving Show
data Exp = Sign Bool | Int Integer deriving Show

test :: Val -> Numdata
test v = Numdata
