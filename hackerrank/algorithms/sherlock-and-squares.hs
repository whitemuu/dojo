import Control.Monad

main :: IO ()
main = do
  q <- readLn :: IO Int
  forM_ [1..q] $ \_ -> do
    [a, b] <- map read . words <$> getLine
    print $ length $ takeWhile (<=b) $ dropWhile (<a) $ map (^2) [1..] -- where laziness shines
