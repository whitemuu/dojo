main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve (k:arr) = length $ filter hasSpecial $ zip [1..] book
  where book = concat $ map (chop k . enumFromTo 1) arr
        -- book [[1,2,3], [4], [1,2], [1,2,3]]
        hasSpecial (i, ls) = (==1) $ length $ filter (==i) ls

chop :: Int -> [a] -> [[a]]
chop _ [] = []
chop n ls = take n ls : (chop n $ drop n ls)
