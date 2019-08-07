import Control.Monad
import Data.List
import Debug.Trace

area h w xs = 2 * h * w + count xs + count (rotate xs)
  where rotate = reverse . transpose
        count = sum . map diff
        diff ys = sum $ zipWith ((abs .) . (-)) (0 : ys) (ys ++ [0])

main = do
  [h, w] <- map read . words <$> getLine
  xs <- replicateM h $ map read . words <$> getLine :: IO [[Int]]
  print $ area h w xs

-- https://www.hackerrank.com/rest/contests/master/challenges/3d-surface-area/hackers/keith_layne4540/download_solution
