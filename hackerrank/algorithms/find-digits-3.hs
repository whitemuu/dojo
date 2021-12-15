main = interact $ unlines . map (show . solve . read) . tail . lines

solve :: Int -> Int
solve n = helper 0 n
  where helper a 0 = a
        helper a b = helper (a + if (b `mod` 10) /= 0 && n `mod` (b `mod` 10) == 0 then 1 else 0) (b `div` 10)
