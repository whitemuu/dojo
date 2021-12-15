main = interact $ unlines . map show . solve . map read . tail . lines

solve :: [Int] -> [Int]
solve = map (ls!!)
  where ls = iterate f 1
        f a = if even a then a + 1 else a * 2
