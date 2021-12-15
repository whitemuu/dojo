import Data.List

main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve ls = maximum $ maximum (map length gp) : [length x + length y | x <- gp, y <- gp, abs (head x - head y) == 1]
  where gp = group $ sort ls
