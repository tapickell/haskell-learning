
multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z

comparedWithHundred :: (Num a, Ord a) => a -> Ordering
comparedWithHundred = compare 100

divByTen :: (Floating a) => a -> a
divByTen = (/10)

isUpperCase :: Char -> Bool
isUpperCase = (`elem` ['A'..'Z'])

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' :: (t -> t2 -> t1) -> [t] -> [t2] -> [t1]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
