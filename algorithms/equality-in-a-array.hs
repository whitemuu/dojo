import Data.List

main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve ls = length ls - (maximum $ map length $ group $ sort ls)
