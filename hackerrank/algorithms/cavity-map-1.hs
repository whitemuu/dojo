import Control.Monad (replicateM)
import Data.Array

main :: IO ()
main = do
  n <- readLn
  ls <- replicateM n getLine
  let a = replCavities . listArray ((1,1), (n,n)) . concat $ ls
  putStr $ unlines [ [a ! (y,x) | x <- [1..n]]
                   | y <- [1..n] ]

replCavities :: Array (Int, Int) Char -> Array (Int, Int) Char
replCavities a = a // [((y, x), 'X') | y <- [2..n-1], x <- [2..n-1], isCavity a (y, x)]
  where n = fst . snd . bounds $ a

isCavity :: Array (Int, Int) Char -> (Int, Int) -> Bool
isCavity a (y, x) = and [ a ! (y, x) > a ! (y-1, x)
                        , a ! (y, x) > a ! (y+1, x)
                        , a ! (y, x) > a ! (y, x-1)
                        , a ! (y, x) > a ! (y, x+1)
                        ]

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/cavity-map/hackers/kierdavis/download_solution
