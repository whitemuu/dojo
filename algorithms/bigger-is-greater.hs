import Control.Monad

main :: IO ()
main = do
  n <- readLn :: IO Int
  forM_ [1..n] $ \_ -> do
    s <- getLine
    putStrLn $ solve s

solve :: String -> String
solve = helper [] . reverse
  where helper xs (y:y':ys)
          | y <= y' = helper (y:xs) (y':ys)
          | otherwise = reverse (r:ys)  ++ ls ++ (y':rs)
          where (ls, r:rs) = break (> y') $ reverse (y:xs)
        helper _ _ = "no answer"

-- 3 3 2 1 xs
-- 4 3 5 1 ys
-- y y'

-- credit https://www.hackerrank.com/rest/contests/master/challenges/bigger-is-greater/hackers/wood6/download_solution
