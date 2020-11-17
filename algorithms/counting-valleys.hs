import           Data.List

main = interact $ show . solve . last . words

delta :: Char -> Int
delta 'U' = 1
delta 'D' = -1


solve :: [Char] -> Int
solve = length . filter ((< 0) . head) . groupBy (\a b -> a /= 0 && b /= 0) . scanl1 (+) . map delta
