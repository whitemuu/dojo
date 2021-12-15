main = do
  d <- read . last . words <$> getLine
  xs <- map read . words <$> getLine
  print $ solve d xs

-- Time limit exceeded
solve :: Int -> [Int] -> Int
solve d xs = sum [1 | i <- [0 .. length xs - 3],
                   j <- [succ i .. length xs - 2],
                   k <- [succ j .. length xs - 1],
                   xs!!j - xs!!i == d && xs!!k - xs!!j == d]
