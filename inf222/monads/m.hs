data Parser b a = P  ( [b] -> [(a, [b])])

instance Functor (Parser b) where
        fmap f (P p) = 
        	P $ \inp -> case p inp of
                        [] -> []
                        [(a, inp')] -> [(f a, inp')]
