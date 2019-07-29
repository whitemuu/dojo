main :: IO ()
main = interact $ show . solve . map (map read . words) . tail .lines

solve :: [[Int]] -> Int
solve ls = abs $ sumdia ls - sumdia (map reverse ls)
  where sumdia mx = sum [ xs!!i | (i, xs) <- zip [0..] mx]
