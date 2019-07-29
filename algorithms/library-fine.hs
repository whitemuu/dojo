main :: IO ()
main = interact $ show . solve . map read . words

solve :: [Int] -> Int
solve [d1, m1, y1, d2, m2, y2]
  | y1 > y2 = 10000
  | y1 < y2 = 0
  | m1 > m2 = 500 * (m1 - m2)
  | m1 < m2 = 0
  | d1 > d2 = 15 * (d1 - d2)
  | otherwise = 0
