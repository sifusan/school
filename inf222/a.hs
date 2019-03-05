data Expr = TRUE| FALSE
        | Zero
        | Succ Expr
        | Pred Expr
        | IsZero Expr
        | If Expr Expr Expr
        deriving Show

e1 = If (IsZero (Pred (Succ Zero))) TRUE FALSE
data TermRep = TermRep NodeTy [TermRep] deriving Show
type NodeTy = String

e2 = TermRep "if"
 [ TermRep "iszero" [ TermRep "pred" [TermRep "succ" [ TermRep "zero" []]]
                    ]
 , TermRep "ture" []
 , TermRep "false" []
 ]
e3 = TermRep "if"
 [ TermRep "isZero"
  [ TermRep "pred"
   [ TermRep "succ"
    [ TermRep "zero"
     []
    ]
   ]
  ]
 , TermRep "true" []
 , TermRep "false" []
 ]
e2g :: Expr -> TermRep
e2g TRUE = TermRep "true" []
e2g FALSE = TermRep "false" []
e2g Zero = TermRep "zero" []
e2g (Succ e) = TermRep "succ" [e2g e]
e2g (Pred e) = TermRep "pred" [e2g e]
e2g (IsZero e) = TermRep "iszero" [e2g e]
e2g (If c t e) = TermRep "if" (map e2g [c, t, e])

g2e :: TermRep -> Expr
g2e (TermRep "true" []) = TRUE
g2e (TermRep "false" []) = FALSE
g2e (TermRep "zero" []) = Zero
g2e (TermRep "succ" [e]) = Succ (g2e e)
g2e (TermRep "pred" [e]) = Pred (g2e e)
g2e (TermRep "iszero" [e]) = IsZero (g2e e)
g2e (TermRep "if" [c, t, e]) = If (g2e c) (g2e t) (g2e e)

optimize :: TermRep -> TermRep
optimize (TermRep "pred" [(TermRep "succ" [e])]) = optimize e
optimize (TermRep s ts) = TermRep s (map optimize ts) 
