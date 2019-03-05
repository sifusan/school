class Concatenable a where
  ccat :: a -> a -> a

instance Concatenable [t] where
  ccat s1 s2 = s1 ++ s2

instance Concatenable Int where
  ccat i j = read (ccat (show i) (show j))
  
