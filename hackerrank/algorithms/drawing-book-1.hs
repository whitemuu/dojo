main = do
  n <- read <$> getLine
  p <- read <$> getLine
  print $ solve n p

solve :: Int -> Int -> Int
solve n p = min x (n' - x)
  where n' = n `div` 2
        x  = p `div` 2
