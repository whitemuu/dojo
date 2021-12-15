main = interact $ show . solve . map read . words

solve :: [Int] -> Int
solve [i, j, k] = length $ filter beautiful [i..j]
  where beautiful i = abs (i - reverseInt i) `mod` k == 0

reverseInt :: Int -> Int
reverseInt i = helper i 0
  where helper 0 y = y
        helper x y = let (q, r) = x `divMod` 10
                     in helper q (y * 10 + r)
