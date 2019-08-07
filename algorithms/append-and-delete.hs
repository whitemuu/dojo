main :: IO ()
main = do
  s <- getLine
  t <- getLine
  k <- read <$> getLine
  putStrLn $ solve s t k

solve :: String -> String -> Int -> String
solve s t k | k >= length s + length t = "Yes"
            | k <  length s' + length t' = "No"
            | even $ k - length s' - length t' = "Yes"
            | odd  $ k - length s' - length t' = "No"
  where same = length . takeWhile (uncurry (==)) $ zip s t
        s' = drop same s
        t' = drop same t
