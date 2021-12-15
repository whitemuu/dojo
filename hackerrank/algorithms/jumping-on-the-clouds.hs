import Data.List

main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
-- solve = (flip (-) 1) . sum . map ((+1) . (flip div 2) . length) . filter ((==0) . head) . group
solve = pred . sum . map ((+1) . (`div` 2) . length) . filter ((==0) . head) . group
-- [0, 0, 1, 0, 0, 1, 0]
-- [0, 0, 0, 1, 0, 0]
