import Data.List
import Data.List.Split (chunksOf) -- cabal install split, Hacker Rank provided this too.

main :: IO ()
main = interact $ unwords . solve

solve :: String -> [String]
solve s = transpose $ chunksOf c s
  where c = ceiling $ sqrt $ fromIntegral $ length s

-- chop :: Int -> [a] -> [[a]]
-- chop _ [] = []
-- chop n ls = take n ls : (chop n $ drop n ls)

transpose' :: [[a]] -> [[a]]
transpose' = undefined
