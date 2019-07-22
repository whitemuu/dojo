import Data.List

main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve ls = max (maximum $ map length gp) (maximum $ (-1) : [length x + length y | x <- gp, y <- gp, abs (head x - head y) == 1])
  where gp = group $ sort ls
