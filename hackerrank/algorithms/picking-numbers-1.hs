import Data.List

main :: IO ()
main = getLine >> getLine >>= print . solve . fmap read . words

solve :: [Int] -> Int
solve = maximum . map length . groupBy (\a b -> abs (a-b) <= 1) . sort

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/picking-numbers/hackers/jhrcek/download_solution
-- !! this is probably wrong solution, check:
-- λ> groupBy (\a b -> abs (a-b) <= 1) [1, 1, 2, 3, 3, 3]
-- [[1,1,2],[3,3,3]]
