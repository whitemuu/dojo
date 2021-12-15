import Data.List

main :: IO ()
main = interact $ unlines . map show . solve . map read . tail . words

solve :: [Int] -> [Int]
-- solve = map (sum . map length) . init . tails . group . sort
solve = map sum . init . tails . map length . group . sort

-- [5, 4, 4, 2, 2, 8]
