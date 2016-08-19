
-- double :: Num a => a -> a
double x = x + x

-- dbl :: Num a => a -> a
dbl x = x*2

-- quad :: Num a => a -> a
quad x = double (double x)

twice f x = f (f x)

-- factorial :: (Enum a, Num a) => a -> a
factorial n = product [1..n]

-- avg :: Foldable t => t Int -> Int
avg ns = sum ns `div` length ns

-- add :: Num a => (a, a) -> a
add (x,y) = x+y

-- curried form of add
-- functions that take their args one by one are curried functions
-- this is a function that takes a Num and returns a function that take a Num
-- is same :type as (+)
-- add' :: Num a => a -> a -> a
add' x y = x+y

-- mult :: Num a => a -> a -> a -> a
mult x y z = x*y*z

-- zero_to :: (Enum t, Num t) => t -> [t]
zero_to n = [0..n]

-- swap :: (t1, t) -> (t, t1)
swap (x,y) = (y,x)

-- second :: [a] -> a
second xs = xs !! 1

-- twooth :: [a] -> a
twooth xs = head (tail xs)

-- pair :: t -> t1 -> (t, t1)
pair x y = (x,y)

-- palindrone :: Eq a => [a] -> Bool
palindrone xs = reverse xs == xs

{--- abz :: a -> a-}
{-abz x | x >= 0 = x-}
      {-| False = -x-}

{-und (x,y) | (True:y) = y-}
          {-| (False:_) = False-}
