-- Typed AST representation

data Expr
  = TRUE   
  | FALSE
  | Zero
  | Succ Expr
  | Pred Expr
  | IsZero Expr
  | If Expr Expr Expr
    deriving Show

-- The benefits of a typed representation are the usual benefits of static typing.

-- Generic AST representation

data TermRep = TermRep ConstrId [TermRep]
  deriving Show

type ConstrId = String

e1 = If (IsZero (Pred (Succ Zero))) TRUE FALSE

-- The benefit of a general representation is that traversal is generic.
-- More convenient when writing funcions that only observe or modify a small number
-- of node types.


-- Convert from typed to general

e2g :: Expr -> TermRep
e2g TRUE = TermRep "true" []
e2g FALSE = TermRep "false" []
e2g Zero = TermRep "0" []
e2g (Succ e) = TermRep "succ" [e2g e]
e2g (Pred e) = TermRep "pred" [e2g e]
e2g (IsZero e) = TermRep "iszero" [e2g e]
e2g (If e1 e2 e3) = TermRep "if" [e2g e1, e2g e2, e2g e3]

e2 = e2g e1

-- Convert from general to typed
-- It is possible to write invalid TermRep values that convert to no Expr.

g2e :: TermRep -> Expr
g2e (TermRep "true" []) = TRUE
g2e (TermRep "false" []) = FALSE
g2e (TermRep "zero" []) = Zero
g2e (TermRep "succ" [e]) = Succ (g2e e)
g2e (TermRep "pred" [e]) = Pred (g2e e)
g2e (TermRep "iszero" [e]) = IsZero (g2e e)
g2e (TermRep "if" [e1, e2, e3]) = If (g2e e1) (g2e e2) (g2e e3)

e3 = g2e e2

-- A simple optimizing function that performs the rewrite "(pred (succ e) -> e" 
-- Thanks to the general representation, the function can be defined concisely

optimize (TermRep "pred" [(TermRep "succ" [e])]) = optimize e
optimize (TermRep cid es) = TermRep cid (map optimize es)

-- Example use of the optimizer function

e4 = If (IsZero (Pred (Succ Zero))) TRUE FALSE
e4' = g2e (optimize (e2g e4))

