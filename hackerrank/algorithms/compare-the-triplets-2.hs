main = interact $ unwords. map show . solve . map (map read . words) . lines

solve :: [[Int]] -> [Int]
solve [a, b] = map (\ord -> length $ filter (==ord) orders) [GT, LT]
  where orders = zipWith compare a b
