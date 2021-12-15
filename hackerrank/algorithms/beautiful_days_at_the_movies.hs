main :: IO ()
main = interact $ show . solve . map read . words

solve :: [Int] -> Int
solve [i, j, k] = length $ filter isBD [i..j]
  -- where isBD d = (abs $ d - (read $ reverse $ show d)) `mod` k == 0
  where isBD d = (==0) . (`mod` k) . abs $ d - read (reverse $ show d)
solve _ = error "wrong input"
