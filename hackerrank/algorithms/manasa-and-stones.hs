import Control.Monad

main :: IO ()
main = do
  t <- readLn :: IO Int
  forM_ [1..t] $ \_ -> do
    n <- readLn
    a <- readLn
    b <- readLn
    putStrLn . unwords . map show $ solve n a b

solve :: Int -> Int -> Int -> [Int]
solve n a b
  | a == b = [a * (n - 1)]
  | otherwise = [a' * (n - 1), a' * (n - 2) + b'..b' * (n - 1)]
  where a' = min a b
        b' = max a b
