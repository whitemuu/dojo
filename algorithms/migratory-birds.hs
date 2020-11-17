import Data.List

main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve = head . foldl1 (\a b -> if length a < length b then b else a) . group . sort
