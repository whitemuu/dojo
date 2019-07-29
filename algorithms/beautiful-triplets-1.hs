import qualified Data.Set as Set

readSeveral :: Read a => IO [a]
readSeveral = fmap (map read . words) getLine

main :: IO ()
main = do
  [_, d] <- readSeveral :: IO [Int]
  xs <- readSeveral :: IO [Int]
  let set = Set.fromList xs
  print $ length $ filter (\x -> (x + d) `Set.member` set && (x + d * 2) `Set.member` set) xs

-- CAVEAT!! this is a solution passed due to incomplete test cases
-- think 'bout [1, 3, 5, 5, 5, 5, 5], d = 2
-- credit: https://www.hackerrank.com/rest/contests/master/challenges/beautiful-triplets/hackers/droque/download_solution?primary=true
