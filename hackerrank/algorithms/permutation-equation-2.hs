import Data.List

main = interact $ unlines . map show . solve . map read . tail . words

(!+) xs i = xs !! (pred i)

solve :: [Int] -> [Int]
solve xs = map snd $ sortOn fst [ (xs !+ (xs !+ x), x) | x <- xs]

-- [5, 2, 1, 3, 4]
-- [4, 2, 5, 1, 3]
-- [3, 2, 4, 5, 1]
