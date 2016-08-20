
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
