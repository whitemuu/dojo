import Data.Char

main :: IO ()
main = interact $ unlines . map (show . solve . read) . tail . lines

-- solve :: [Int] -> [Int]
-- solve xs = map countDivisor $ zip xs $ map (map ((+ (-48)) . ord) . show) xs
--   where countDivisor (n, ls) = length $ filter isDivisor ls
--           where isDivisor d = d /= 0 && n `mod` d == 0

solve :: Int -> Int
solve n = length . filter isDivisor . map (subtract (ord '0') . ord) . show $ n
  where isDivisor d = d /= 0 && n `mod` d == 0
