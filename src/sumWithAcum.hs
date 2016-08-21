
zum' :: Num a => [a] -> a
zum' xs = zumr' xs 0

zumr' :: Num a => [a] -> a -> a
zumr' [] a = a
zumr' (x:xs) a = zumr' xs a+x

