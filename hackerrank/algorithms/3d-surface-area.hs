import Data.List

main :: IO ()
main = interact $ show . solve . map (map read . words) . tail . lines

solve :: [[Int]] -> Int
solve ls = z + xy -- z axis
  where z = (* 2) . length . filter (/= 0) $ concat ls
        xy = sum . map getTierArea $ tiers ls

tiers ls | not . any (/= 0) $ concat ls = []
         | otherwise = map (map (\x -> if x == 0 then 0 else 1)) ls
                       : tiers (map (map (\x -> if x == 0 then 0 else pred x)) ls)

getTierArea ls = ((* 4) . sum $ map sum ls) - (xoverlays ls + yoverlays ls) * 2
  where xoverlays ls = sum . map (length . filter ((== 2) . sum)) $ map genPairs ls
        genPairs (x:y:xs) = [x, y] : genPairs (y:xs)
        genPairs _ = []
        yoverlays ls = xoverlays $ transpose ls
