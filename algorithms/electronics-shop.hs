main :: IO ()
main = do
    [b, _, _] <- getInts
    ks  <- getInts
    us <- getInts
    print $ foldl max (-1) [k + u | k <- ks, u <- us, k + u <= b]

getInts :: IO [Int]
getInts = map read . words <$> getLine
