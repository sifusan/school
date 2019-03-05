module BIPLDefinitions where
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
