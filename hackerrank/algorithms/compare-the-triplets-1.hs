import Control.Applicative
import Data.Function

getInts :: IO [Int]
getInts = map read . words <$> getLine

main = do
    a <- zip <$> getInts <*> getInts
    let f = show . length . ($ a) . filter . uncurry
    putStrLn $ f (>) ++ " " ++ f (<)

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/compare-the-triplets/hackers/alephalpha/download_solution 
