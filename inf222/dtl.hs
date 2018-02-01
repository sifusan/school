data Expr
    = TRUE
    | FALSE
    | Zero
    | Succ Expr
    | Pred Expr
    | IsZero Expr
    | If Expr Expr Expr
    deriving (Show, Eq)


data Ty = TyBool | TyNat deriving (Show, Eq)

typeOf :: Expr -> Ty
typeOf TRUE = TyBool
typeOf FALSE = TyBool
typeOf Zero = TyNat
typeOf (Succ e) = if typeOf e == TyNat then TyNat
    else error "Succ needs a parameter of type TyNat"
typeOf (Pred e) = if typeOf e == TyNat then TyNat
    else error "Pred needs a parameter of type TyNat"
typeOf (IsZero e) = if typeOf e == TyNat then TyNat
    else error "IsZero needs a parameter of type TyNat"
typeOf (If e1 e2 e3) | typeOf e1 /= TyBool = error "Must be bool"
typeOf (If e1 e2 e3) | typeOf e2 /= typeOf e3 = error "Must be same"
typeOf (If _ e2 _ ) = typeOf e2

eval :: Expr -> Expr
eval (Succ e) = Succ (eval e)
eval (Pred e) = case eval e of
    Zero -> Zero
    Succ e' -> e'
eval (IsZero e) = bool2Expr $ if (eval e == Zero) then e else error"not zero"
eval (If e1 e2 e3) = eval $ if (eval e == True) then e2 else e3

main = do
    let term = Pred (If (IsZero Zero) (Succ (Succ Zero)) Zero)
    print term
    print $ typeOf term
    print $ eval term
