main = do
  s <- getLine
  t <- getLine
  k <- readLn
  putStrLn $ solve s t k

solve :: String -> String -> Int -> String
solve s t k
  | k < leastStep = "No"
  | (k - leastStep) `mod` 2 == 0 || (k - leastStep) > sameLength * 2 = "Yes"
  | otherwise = "No"
  where sameLength = length . takeWhile id $ zipWith (==) s t
        leastStep = length s + length t -  sameLength * 2
