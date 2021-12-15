readIntList :: IO [Int]
readIntList = do
  line <- getLine
  return $ map read $ words line

main :: IO ()
main = do
  _  <- getLine
  as <- readIntList
  bs <- readIntList
  print $ solve as bs

solve :: [Int] -> [Int] -> Int
solve as bs = length
              $ filter (\x -> bsGcd `mod` x == 0)
              $ takeWhile (<= bsGcd)
              $ map (asLcm *) [1..]
  where asLcm = foldl1 lcm as
        bsGcd = foldl1 gcd bs
