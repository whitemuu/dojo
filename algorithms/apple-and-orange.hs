main = interact $ unlines . map show . solve . map read . words

solve :: [Int] -> [Int]
solve (s:t:a:b:m:_:xs) = [length $ filter (\x -> s <= x && x <= t) $ map (+a) as
                         ,length $ filter (\x -> s <= x && x <= t) $ map (+b) os]
  where (as, os) = splitAt m xs
