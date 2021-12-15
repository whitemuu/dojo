import Control.Monad

main = do
  [_, k, q] <- map read . words <$> getLine
  xs <- rotate k . map read . words <$> getLine
  replicateM_ q $ readLn >>= print . (xs!!)

rotate :: Int -> [Int] -> [Int]
rotate _ [] = []
rotate k a = drop k' a ++ take k' a
  where k' = l - k `mod` l
        l = length a
