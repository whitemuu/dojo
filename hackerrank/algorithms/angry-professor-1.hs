import Control.Monad

main :: IO ()
main = do
  t <- read <$> getLine
  forM_ [1..t] $ \_ -> do
    [_, k] <- map read . words <$> getLine
    xs <- map read . words <$> getLine
    putStrLn $ solve k xs

solve :: Int -> [Int] -> String
solve k xs
  | onTime < k = "YES"
  | otherwise = "NO"
  where onTime = length $ filter (<=0) xs
