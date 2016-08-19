
main = do putStrLn "What is 2 + 2?"
          x <- readLn
          if x == 4
              then putStrLn "Correct!"
              else putStrLn "Wrong Answer"
