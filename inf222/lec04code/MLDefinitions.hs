module MLDefinitions where

data Instr 
  = Const Int
  | Store Int
  | Load Int
  | Jump Int
  | CJump Int
  | Not
  | Add
  | Sub
  | Mul
  | Gt
    -- etc.
    deriving Show
