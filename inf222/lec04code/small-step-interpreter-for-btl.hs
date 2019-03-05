-- Small-step interpreter for BTL

import Control.Exception (assert)

data Expr
  = TRUE
  | FALSE
  | Zero
  | Succ Expr
  | Pred Expr
  | IsZero Expr
  | If Expr Expr Expr
  deriving (Show, Eq)

isValue :: Expr -> Bool
isValue TRUE = True
isValue FALSE = True
isValue e = isNumericValue e

isNumericValue Zero = True
isNumericValue (Succ e) = isNumericValue e
isNumericValue _ = False

step :: Expr -> Expr
step (Succ e) = Succ (step e)
step (Pred Zero) = Zero
step (Pred (Succ e)) | isNumericValue e = e
step (Pred e) = Pred (step e)
step (IsZero Zero) = TRUE
step (IsZero e) | isValue e = FALSE
step (IsZero e) = IsZero (step e)
step (If TRUE e2 e3) = e2
step (If FALSE e2 e3) = e3
step (If e1 e2 e3) = If (step e1) e2 e3

eval :: Expr -> Expr
eval e | isValue e = e
eval e = eval (step e)

main = do
  assert (eval TRUE == TRUE) $ print "OK"
  assert (eval FALSE == FALSE) $ print "OK"
  assert (eval Zero == Zero) $ print "OK"
  assert (eval (Succ (Succ (Succ Zero))) == (Succ (Succ (Succ Zero)))) $ print "OK"
  assert (eval (Pred (Pred (Succ Zero))) == Zero) $ print "OK"
