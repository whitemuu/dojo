import Control.Monad

main = do
  q <- readLn
  replicateM_ q $ getLine >>= print . solve . map read . words

squares :: [Int]
squares = map (^2) [1..]

solve :: [Int] -> Int
solve [a, b] = length . takeWhile (<=b) . dropWhile (<a) $ squares
