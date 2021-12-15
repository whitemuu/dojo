import           Control.Monad

main = do
  [[_, k], xs, [m]] <- replicateM 3 $ map read . words <$> getLine
  putStr $ maybe "Bon Appetit" show $ solve k xs m

solve :: Int -> [Int] -> Int -> Maybe Int
solve k xs m
  | anna == m = Nothing
  | otherwise = Just (m - anna)
  where anna = (sum xs - xs!!k) `div` 2
