import Data.List
import Control.Monad

main :: IO ()
main = do
  n <- readLn
  forM_ [1..n] $ \_ -> do
    getLine
    s <- getLine
    putStrLn $ solve s

solve :: String -> String
solve ls | existSingle || unMovable = "NO"
         | otherwise                = "YES"
  where (bs, us) = break ((== '_') . head) $ group $ sort ls
        existSingle = any ((==1) . length) bs
        unMovable = null us && (any ((==1) . length) $ group ls)
