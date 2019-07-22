import Control.Monad
import Data.List
main :: IO ()
main = do
  [a, b] <- replicateM 2 (getLine >>= return . map read . words :: IO [Int])
  putStr $ unwords $ map show $ solve a b

solve :: [Int] -> [Int] -> [Int]
solve a b = [length $ filter (>0) diffs, length $ filter (<0) diffs]
  where diffs = zipWith (-) a b
