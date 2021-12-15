import Data.Array

main :: IO ()
main = do
  n <- readLn
  ns <- fmap (fmap read . words) getLine
  let pInv = array (1,n::Int) $ zip ns [1..]
      solve x = pInv!(pInv!x)
  mapM_ (print . solve) [1..n]

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/permutation-equation/hackers/jhrcek/download_solution
