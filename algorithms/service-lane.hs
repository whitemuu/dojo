main :: IO ()
main = interact $ unlines . map show . solve . map (map read . words) . tail . lines

solve :: [[Int]] -> [Int]
solve (x:xs) = map (\[i, j] -> minimum . take (j - i + 1) $ drop i x) xs
