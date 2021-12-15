main :: IO ()
main = interact $ unlines . solve . read

solve :: Int -> [String]
solve n = [replicate (n - i) ' ' ++ replicate i '#' | i <- [1..n]]
