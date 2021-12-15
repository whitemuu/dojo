import Control.Monad
import Data.List
-- import Data.Ord

main :: IO ()
main = do
  t <- readLn :: IO Int
  forM_ [1..t] $ \_ -> do
    n <- readLn :: IO Int
    ls <- replicateM n $ map read . words <$> getLine
    putStrLn $ if solve ls then "NO" else "YES"

solve :: [[Int]] -> Bool
solve = any ((> 1) . length) . groupBy (\x y -> head x == head y) . nub . sortOn head
