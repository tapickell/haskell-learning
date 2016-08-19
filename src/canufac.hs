
fac 0 = 0
fac n = n * fac (n-1)

main = do putStrLn "What is 5! ?"
          x <- readLn
          if x == fac 5
              then putStrLn "Correct!"
              else putStrLn "Wrong Answer"
