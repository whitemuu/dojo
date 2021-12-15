import Control.Monad
import Data.Array

main :: IO ()
main = do
  [_, k, q] <- map read . words <$> getLine
  a <- rotate k . map read . words <$> getLine
  -- let a' = listArray (0, length a - 1) a
  -- DONE timeout, even OK without array, replicateM is slow as hell
  -- void . replicateM q $ print . (a'!) =<< readLn
  mapM_ (print . (a!!) . read) . lines =<< getContents

rotate :: Int -> [Int] -> [Int]
rotate k a = concat . (\(x, y) -> [y, x]) $ splitAt p a
  where k' = k `mod` length a
        p = length a - k'
