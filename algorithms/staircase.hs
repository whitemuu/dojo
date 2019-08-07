main :: IO ()
main = interact $ unlines . solve . read

solve :: Int -> [String]
solve n = map genFlight [1..n]
  where genFlight m = replicate (n - m) ' ' <> replicate m '#'
        genFlight :: Int -> String
