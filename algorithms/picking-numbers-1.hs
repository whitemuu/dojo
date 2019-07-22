import Data.List

main :: IO ()
main = getLine >> getLine >>= print . solve . fmap read . words

solve :: [Int] -> Int
solve = maximum . map length . groupBy (\a b -> abs (a-b) <= 1) . sort

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/picking-numbers/hackers/jhrcek/download_solution
