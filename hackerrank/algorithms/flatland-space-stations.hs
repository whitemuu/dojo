import Data.List

main :: IO ()
main = do
  [n, _] <- map read . words <$> getLine
  xs <- map read . words <$> getLine
  print $ solve n xs

solve :: Int -> [Int] -> Int
-- solve n xs = maximum . (n - last xs' - 1:) . (head xs' :) $ zipWith (((`div` 2) . ) . (-)) (tail xs') xs'
-- solve n xs = maximum . (n - last xs' - 1:) . (head xs' :) $ zipWith (\a b -> (a - b) `div` 2) (tail xs') xs'
solve n xs = maximum . (n - last xs' - 1:) . (head xs' :) . map (`div` 2) $ zipWith (-) (tail xs') xs'
  where xs' = sort xs
