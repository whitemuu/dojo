{-#LANGUAGE ScopedTypeVariables #-}

import Data.List
import Data.Functor

main = do
  [n, d] :: [Int] <- map read . words <$> getLine
  as :: [Int] <- map read . words <$> getLine
  putStrLn $ show $ solve as

-- TODO
solve :: [Int] -> [Int]
solve as = do
    (x : as') <- tails as
    (y : as'') <- tails as'
    return y

-- https://www.hackerrank.com/rest/contests/master/challenges/beautiful-triplets/hackers/nigredo/download_solution?primary=true
