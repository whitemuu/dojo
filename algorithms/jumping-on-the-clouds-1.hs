main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve (0:0:0:re) = 1 + solve (0:re)
solve (0:0:re)   = 1 + solve (0:re)
solve (0:1:re)   = 1 + solve re
solve [0]        = 0
solve _          = error "input illegal"
-- [0, 0, 1, 0, 0, 1, 0]
-- [0, 0, 0, 1, 0, 0]
