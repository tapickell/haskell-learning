
fac 0 = 1
fac n = n * fac (n-1)

main = do putStrLn "What do you want to fac?"
          x <- readLn
          if x > 0
              then print (fac(x))
              else putStrLn "Need a positive integer"
