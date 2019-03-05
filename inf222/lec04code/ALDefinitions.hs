module ALDefinitions where

data Instr 
  = Const Int
  | Store String
  | Load String
  | Jump String
  | CJump String
  | Label String
  | Not
  | Add
  | Sub
  | Mul
  | Gt
    -- etc.
    deriving Show
