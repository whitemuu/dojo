main :: IO ()
main = interact $ solve . map read . lines

solve :: [Int] -> String
solve ls = case kaprekarsInRange ls of
             [] -> "INVALID RANGE"
             kps -> unwords $ map show kps

kaprekarsInRange :: [Int] -> [Int]
kaprekarsInRange [a,b] = filter isKaprekar [a..b]
  where isKaprekar :: Int -> Bool
        isKaprekar n = n == l + r
          where d   = length $ show n
                sqr = show $ n ^ 2
                l   = read $ drop (length sqr - d) sqr
                r   = read $ '0' : take (length sqr - d) sqr
