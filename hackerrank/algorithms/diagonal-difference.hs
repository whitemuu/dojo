main :: IO ()
main = interact $ show . solve . map (map read . words) . tail . lines

solve :: [[Int]] -> Int
solve ls = abs $ diagonalSum ls - diagonalSum (reverse ls)
  where diagonalSum xs = sum [e!!i | (e, i) <- zip xs [0..]]
