main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve (k:xs) = length $ [ () | i <- [0 .. n - 1], j <- [i + 1 .. n], (xs!!i + xs!!j) `mod` k == 0]
  where n = length xs - 1 -- max index
-- solve (k:xs) = sum $ concat $ [ [ 1 | j <- [i + 1 .. length xs - 1], (xs!!i + xs!!j) `mod` k == 0 ] | i <- [0 .. length xs - 2]]
