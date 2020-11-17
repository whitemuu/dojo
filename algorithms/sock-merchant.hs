import           Data.List

main :: IO ()
main = getLine >> getLine >>= print . solve . map read . tail . words

solve :: [Int] -> Int
solve = sum . map ((`div` 2) . length) . group . sort
-- [10, 20, 20, 10, 10, 30, 50, 10, 20]
