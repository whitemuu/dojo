import Data.List
import Data.Ord
main :: IO ()
main = interact $ show . solve . map read . tail . words

solve :: [Int] -> Int
solve (d:arr) = sum $ map countBT gps
  where countBT :: [Int] -> Int
        countBT xs = sum [ xs!!i * xs!!(i+1) * xs!!(i+2) | i <- [0..length xs - 3]]
        -- [2,1,1,1] -> 3
        gps :: [[Int]]
        gps = map (map length) $ filter ((>=3) . length) $ groupBy' (\x y -> head x + d == head y) $ group $ sortOn (`mod` d) arr
        -- [1, 1, 2, 4, 5, 7, 8, 10] --> [[[1,1],[4],[7],[10]],[[2],[5],[8]]] --> [[2,1,1,1],[1,1,1]]


-- orOn :: (a -> Bool) -> (a -> Bool) -> a -> Bool
-- orOn f g x = f x || g x

-- https://wiki.haskell.org/List_function_suggestions#Generalize_groupBy_and_friends
groupBy'                 :: (a -> a -> Bool) -> [a] -> [[a]]
groupBy' rel []          =  []
groupBy' rel (x:xs)      =  (x:ys) : groupBy' rel zs
  where (ys,zs) = groupByAux x xs
        groupByAux x0 (x:xs) | rel x0 x = (x:ys, zs)
          where (ys,zs) = groupByAux x xs
        groupByAux y xs = ([], xs)
