
lucky :: (Integral a) => a -> String
lucky 7 = "Lucky"
lucky _ = "Nope"

factorialz :: (Integral a) => a -> a
factorialz 0 = 1
factorialz n = n * factorialz (n-1)

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

firstTrip :: (a,b,c) -> a
firstTrip (x, _, _) = x

secondTrip :: (a,b,c) -> b
secondTrip (_, x, _) = x

thirdTrip :: (a,b,c) -> c
thirdTrip (_, _, x) = x

hd' :: [a] -> a
hd' [] = error "Nope"
hd' (x:_) = x

tell :: (Show a) => [a] -> String
tell []       = "Empty List"
tell (x:[])   = "One element: "  ++ show x
tell (x:y:[]) = "Two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_)  = "Long list: "    ++ show x ++ " and " ++ show y

length' :: (Num b) => [a] -> b
length' [] = 0
length' (_:xs) = 1 + length' xs

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

zum' :: Num a => [a] -> a
zum' xs = zumr' xs 0

zumr' :: Num a => [a] -> a -> a
zumr' [] a = a
zumr' (x:xs) a = zumr' xs a+x

capital :: String -> String
capital "" = "Empty String"
capital all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]










