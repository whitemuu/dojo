import Control.Monad

main = do
  t <- readLn
  replicateM_ t $ solve . map read . words <$> getLine >>= print

solve :: [Int] -> Int
-- didn't pass, consume too much memory
solve [n, m, s] = (!! pred m) $ drop (s - 1) $ cycle [1..n]
