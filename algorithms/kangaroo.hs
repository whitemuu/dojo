main = interact $ solve . map read . words

solve :: [Int] -> String
-- solve [x1, v1, x2, v2] = case takeWhile
--                               (\t -> not $
--                                      v1 <= v2 && x1 + v1 * t < x2 + v2 * t ||
--                                      v1 >= v2 && x1 + v1 * t > x2 + v2 * t)
--                               [0..] of
--                            [] -> "NO"
--                            ts  -> let t = last ts
--                                   in if x1 + v1 * t == x2 + v2 * t
--                                      then "YES"
--                                      else "NO"

solve [x1, v1, x2, v2] = helper x1 v1 x2 v2 0
  where helper x1 v1 x2 v2 j
          | x1 + v1 * j == x2 + v2 * j = "YES"
          | v1 >= v2 && x1 + v1 * j > x2 + v2 * j = "NO"
          | v1 <= v2 && x1 + v1 * j < x2 + v2 * j = "NO"
          | otherwise = helper x1 v1 x2 v2 (j + 1)


-- main = do
--   [x1,v1,x2,v2] <- (map read . words) <$> getLine
--   putStrLn $ if v1 > v2 && (x2-x1) `mod` (v1-v2) == 0 then "YES" else "NO"
-- equation: x1 + v1 * t = x2 + v2 * t => t = (x1 - x2) / (v2 - v1)
-- https://www.hackerrank.com/rest/contests/master/challenges/kangaroo/hackers/yaray/download_solution?primary=true
