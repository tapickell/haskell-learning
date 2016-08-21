
whichGeneration :: (Num a, Ord a) => a -> [Char]
whichGeneration birthYear
  | birthYear <= 1900 = "before known generation classification"
  | birthYear <= 1915 = "The Lost Generation"
  | birthYear <= 1925 = "The Greatest Generation"
  | birthYear <= 1944 = "The Silent Generation"
  | birthYear <= 1964 = "The Baby Boomer Generation"
  | birthYear <= 1981 = "Generation X"
  | birthYear <= 1995 = "The Millennials"
  | birthYear <= 2015 = "Homelanders"
  | otherwise         = "Unclassified"

max' :: Ord a => a -> a -> a
max' a b
  | a > b     = a
  | otherwise = b

myCompare :: Ord a => a -> a -> Ordering
a `myCompare` b
  | a > b     = GT
  | a == b    = EQ
  | otherwise = LT

initials :: [Char] -> [Char] -> [Char]
initials firstname lastname =
  [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

initials3 :: [a] -> [a] -> [a] -> [a]
initials3 (f:_) (m:_) (l:_) =
  [f] ++ [m] ++ [l]

cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^2
   in sideArea + 2 * topArea
