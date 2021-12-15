{-# LANGUAGE LambdaCase #-}
import Data.List

main = do
  k <- read . last . words <$> getLine
  ar <- map read . words <$> getLine
  print $ solve k ar

solve :: Int -> [Int] -> Int
solve k ar = length $
             concatMap (\case
                           x:ys -> [(x, y) | y <- ys, (x + y) `mod` k == 0]
                           [] -> []) $
             tails ar
