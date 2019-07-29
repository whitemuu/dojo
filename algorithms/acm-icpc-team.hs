import Data.Bits
import Data.List
import Data.Char(digitToInt)

main :: IO ()
main = interact $ unlines . map show . solve . map (map digitToInt) . tail . lines

solve :: [[Int]] -> [Int]
solve ls = [head xs, length xs]
  where xs = head $ group $ reverse $ sort [sum $ zipWith (.|.) (ls!!i) (ls!!j) | i <- [0..length ls - 2], j <- [i + 1 .. length ls - 1]]
  -- where xs = head (group (reverse (sort [sum $ zipWith (.|.) (ls!!i) (ls!!j) | i <- [0..length ls - 2], j <- [i + 1 .. length ls - 1]])))


-- [[1,0,1,0,1], [1,1,1,0,0], [1,1,0,1,0], [0,0,1,0,1]]
