import Data.List
import qualified Data.Set as Set

main :: IO ()
main = do
  getLine
  scores <- map read . words <$> getLine :: IO [Int]
  getLine
  alice <- map read . words <$> getLine :: IO [Int]
  putStr $ unlines $ map show $ solve scores alice

-- TODO time out
-- https://www.reddit.com/r/haskell/comments/ch7dk9/what_cause_this_solution_slow/
solve :: [Int] -> [Int] -> [Int]
solve scores alice = map getRank alice
  -- where getRank score = (+1) $ length $ takeWhile (> score) $ nub scores -- nub is  quadratic
  where getRank score = (+1) $ length $ takeWhile (> score) scores'
        -- scores' = map head $ group scores
        scores' = reverse $ Set.toList $ Set.fromList scores
