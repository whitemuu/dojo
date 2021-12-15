import Control.Monad

main :: IO ()
main = do
  t <- readLn :: IO Int
  forM_ [1..t] $ \_ -> do
    ls <- map read . words <$> getLine
    print $ solve ls

solve :: [Int] -> Int
solve [n, c, m] = solve_ (n `div` c) (n `div` c)
  where solve_ tt tz
          | tz < m = tt
          | otherwise = solve_ (tt + (tz `div` m)) (uncurry (+) $ tz `divMod` m)
