-- Big step interpreter for BTL

import Control.Exception (assert)

data Expr
  = TRUE
  | FALSE
  | Zero
  | Succ Expr
  | Pred Expr
  | IsZero Expr
  | If Expr Expr Expr
  deriving (Show)

data Val = VBool Bool | VInt Int | VUndefined
  deriving Eq


incr (VInt i) = (VInt (i+1))
incr _ = error "aarrgh"

instance Show Val where
  show (VBool b) = show b
  show (VInt i) = show i
  show VUndefined = "undefined"
  
evaluate :: Expr -> Val
evaluate TRUE = VBool True
evaluate FALSE = VBool False
evaluate Zero = VInt 0
evaluate (IsZero e) = case evaluate e of
  (VInt 0) -> VBool True
  _ -> VBool False
evaluate (Succ e) = incr (evaluate e)
evaluate (Pred e) = case evaluate e of
  (VInt i) -> VInt (max 0 (i-1))
  _ -> VUndefined
evaluate (If e1 e2 e3) = case evaluate e1 of
  (VBool True) -> evaluate e2
  (VBool False) -> evaluate e3
  _ -> VUndefined
  
main = do
  assert (evaluate TRUE == (VBool True)) $ print "OK"
  assert (evaluate FALSE == (VBool False)) $ print "OK"
  assert (evaluate Zero == (VInt 0)) $ print "OK"
  assert (evaluate (Succ (Succ (Succ Zero))) == VInt 3) $ print "OK"
  assert (evaluate (Pred (Pred (Succ Zero))) == VInt 0) $ print "OK"
  
