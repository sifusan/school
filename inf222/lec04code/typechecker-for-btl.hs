-- Type checker for BTL that we wrote in class

data Expr
  = TRUE
  | FALSE
  | Zero
  | Succ Expr
  | Pred Expr
  | IsZero Expr
  | If Expr Expr Expr
  deriving (Show, Eq)

data Ty = TyBool | TyNat
  deriving (Show, Eq)

typeOf :: Expr -> Ty
typeOf TRUE = TyBool
typeOf FALSE = TyBool
typeOf Zero = TyNat
typeOf (Succ e) = if typeOf e == TyNat
                  then TyNat
                  else error "Succ needs a parameter of type TyNat"
typeOf (Pred e) = if typeOf e == TyNat
                  then TyNat
                  else error "Pred needs a parameter of type TyNat"
typeOf (IsZero e) = if typeOf e == TyNat
                    then TyBool
                    else error "IsZero needs a parameter of type TyNat"
typeOf (If e1 e2 e3) | typeOf e1 /= TyBool = error "must be bool"
typeOf (If e1 e2 e3) | typeOf e2 /= typeOf e3 = error "must be same"
typeOf (If _ e2 _) = typeOf e2

bool2Expr True = TRUE
bool2Expr False = FALSE

-- eval needs no checks for erroneus programs 
eval :: Expr -> Expr
eval (Succ e) = Succ (eval e)
eval (Pred e) = case eval e of
                  Zero -> Zero
                  Succ e' -> e'
eval (IsZero e) = bool2Expr $ eval e == Zero
eval (If e1 e2 e3) = eval $ if (eval e1 == TRUE) then e2 else e3
eval v = v

main = do
  let term = Pred (If (IsZero Zero) (Succ (Succ Zero)) Zero)
  print term
  print $ typeOf term
  print $ eval term
