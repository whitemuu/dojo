import Control.Monad

main :: IO ()
main = do
  t <- readLn
  replicateM_ t $ getLine >>= print . solve . map read . words

solve :: [Int] -> Int
solve [n, m, s] = (s + m - 2) `mod` n + 1

-- 1 2 3 1 2 3
-- s=2
--   1 2 3

-- deal with mod 0: ((x - 1) `mod` y) + 1
-- https://www.hackerrank.com/rest/contests/master/challenges/save-the-prisoner/hackers/MartinQc/download_solution?primary=true
