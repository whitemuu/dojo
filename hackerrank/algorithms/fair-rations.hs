import Data.List.Split (chunksOf)

main :: IO ()
main = interact $ maybe "NO" show . solve . map read . tail . words

solve :: [Int] -> Maybe Int
solve xs
  | odd $ length xs' = Nothing
  | otherwise = Just . sum . map (\[x, y] -> (* 2) $ y - x) $ chunksOf 2 xs'
  where xs' = map fst . filter (odd . snd) $ zip [0..] xs :: [Int]
