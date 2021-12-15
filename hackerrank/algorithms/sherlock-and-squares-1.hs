import Control.Monad

main :: IO ()
main = do
  q <- readLn :: IO Int
  forM_ [1..q] $ \_ -> do
    [a, b] <- map read . words <$> getLine
    print $ floor (sqrt b) - ceiling (sqrt a) + 1


-- 1 2 3 4 5
--  ↑   ↑
