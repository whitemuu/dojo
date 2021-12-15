import Data.List

main :: IO ()
main = interact $ unlines . solve . tail . lines

solve :: [[Char]] -> [[Char]]
solve ls = zipWith (zipWith (\x y -> if x == y then x else min x y))
                   (map markCav ls)
                   (transpose $ map markCav $ transpose ls)
  where markCav = helper [] . reverse
          where helper xs (a:b:c:ys)
                  | and [a < b, b > c] = helper ('X':a:xs) (c:ys)
                  | b > c = helper (b:a:xs) (c:ys)
                  | otherwise = helper (a:xs) (b:c:ys)
                helper xs ys = reverse ys ++ xs
