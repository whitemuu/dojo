main :: IO ()
main = interact $ show . solve . map read . lines

solve :: [Int] -> Int
solve [n, p] = min fromFront fromBack
  where fromFront = p `div` 2
        fromBack = (n `div` 2) - fromFront
solve _ = error "wrong input"
