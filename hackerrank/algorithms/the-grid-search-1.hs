import Control.Monad (replicateM)
import Data.Functor ((<$>))
import Data.List (tails, transpose, isPrefixOf)

check a b = and $ zipWith isPrefixOf a b

solve b l = any (check l) . concatMap (init . tails) . transpose $ map (init . tails) b

getNBLine = do
    l <- getLine
    if null l then getNBLine else return l

main = (readLn >>=) . flip replicateM $ do
    [r,_] <- map read . words <$> getNBLine :: IO [Int]
    grid <- replicateM r getLine :: IO [String]
    [lr,_] <- map read . words <$> getNBLine :: IO [Int]
    lgrid <- replicateM lr getLine :: IO [String]
    putStrLn $ if solve grid lgrid then "YES" else "NO"

-- https://www.hackerrank.com/rest/contests/master/challenges/the-grid-search/hackers/Wardaft/download_solution
