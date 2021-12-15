import           Data.List

main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve a = maximum $ map f a'
  where a' = nub a
        f x = length [() | i <- a, i == x || i == x + 1]
