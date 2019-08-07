import Data.List

main :: IO ()
main = interact $ unwords . map show . solve . map read . words

solve :: [Int] -> [Int]
solve xs = [min, max]
  where sorted = sort xs
        min = sum $ take 4 sorted
        max = sum $ drop 1 sorted
