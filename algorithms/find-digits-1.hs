import Control.Monad

main :: IO ()
main = (`replicateM_` once) =<< readLn

once :: IO ()
once = do
    s <- getLine
    let n = read s :: Int
        isDivisor '0' = False
        isDivisor  d  = n `mod` read [d] == 0
    print $ length $ filter isDivisor s

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/find-digits/hackers/koen_/download_solution
