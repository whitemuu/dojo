main :: IO ()
main = interact $ unwords . map show . solve . map read . words

-- solve :: [Int] -> [Int]
-- solve xs = [min, max]
--   where sorted = sort xs
--         min = sum $ take 4 sorted
--         max = sum $ drop 1 sorted

solve :: [Int] -> [Int]
solve xs = [sum' - max', sum' - min']
  where sum' = sum xs
        min' = minimum xs
        max' = maximum xs
