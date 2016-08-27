
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

flip' :: (a -> b -> c) -> (b -> a -> c)
flip' f = g
    where g x y = f y x

flipa' :: (a -> b -> c) -> b -> a -> c
flipa' f y x = f x y

map' :: (a -> b) -> [a] -> [b]
map' _ [] = []
map' f (x:xs) = f x : map' f xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs)
    | p x       = x : filter' p xs
    | otherwise = filter' p xs

quicksort' :: (Ord a) => [a] -> [a]
quicksort' [] = []
quicksort' (x:xs) =
    let smlSort = quicksort' (filter (<=x) xs)
        bigSort = quicksort' (filter (>x) xs)
    in smlSort ++ [x] ++ bigSort

largestDivisible :: (Integral a) => a
largestDivisible = head (filter p [100000,99999..])
    where p x = x `mod` 3829 == 0

chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n  = n:chain (n*3 + 1)





