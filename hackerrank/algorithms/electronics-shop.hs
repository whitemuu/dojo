main :: IO ()
main = do
    [b, _, _] <- getInts
    ks  <- getInts
    us <- getInts
    print $ foldl max (-1) [k + u | k <- ks, u <- us, k + u <= b]

getInts :: IO [Int]
getInts = map read . words <$> getLine

-- solve b ks ds = foldl (\x y -> if y <= b then max x y else x) (-1) [ k + d | k <- ks, d <- ds]
-- you can stop a for-loop on y == b, talk about suckness of functional
