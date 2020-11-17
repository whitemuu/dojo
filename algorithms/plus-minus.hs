main = interact $ unlines . map show . solve . map read . tail . words

solve :: [Int] -> [Float]
solve ls = map
           (\f -> (/ (fromIntegral $ length ls)) $ fromIntegral $ length $ filter f ls)
           [(> 0), (< 0), (== 0)]
