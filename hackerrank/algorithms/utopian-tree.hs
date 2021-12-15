main :: IO ()
main = interact $ unlines . map (show . growTo) . map read . tail . lines

growTo :: Int -> Int
-- growTo n = foldl (flip ($)) 1 $ take n $ concat $ repeat [(2*), (1+)]
growTo n = foldl (flip ($)) 1 $ take n $ cycle [(2*), (1+)]
