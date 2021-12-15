import Data.List (sort, group)

main :: IO ()
main = do
  n <- readLn :: IO Int
  getLine >>= putStr . unlines . map show . cut n . map (read :: String -> Int) . words

cut :: Int -> [Int] -> [Int]
cut n = init . scanl (-) n . map length . group . sort

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/cut-the-sticks/hackers/BlueD/download_solution
