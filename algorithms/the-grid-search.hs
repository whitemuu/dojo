module Main where

import Control.Monad

main :: IO()
main = do
    t <- readLn :: IO Int
    -- ls <- lines <$> getContents
    forM_ [1..t] $ \_ -> do
      [r, _] <- map read . words <$> getLine
      g <- replicateM r getLine
      [r', _] <- map read . words <$> getLine
      p <- replicateM r' getLine
      putStrLn $ myContains g p

-- TODO test case 5 timeout, still caused by replicateM ?
myContains :: [String] -> [String] -> String
myContains gs ps
  | length gs < length ps = "NO"
  | otherwise = if helper gs ps [0..xBound] then "YES" else myContains (tail gs) ps
  where xBound = foldl1 (-) $ map (length . head) [gs, ps]
        helper (g:gs) (p:ps) ls = helper gs ps $ filterIndices g p ls
        helper _      _      [] = False
        helper _      []     _  = True


filterIndices :: String -> String -> [Int] -> [Int]
filterIndices g p = filter beIndex
  where beIndex i = p == take (length p) (drop i g)
