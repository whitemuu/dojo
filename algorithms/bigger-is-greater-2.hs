import           Data.Maybe
import           Data.List
import           Debug.Trace

main = interact $ unlines . map (fromMaybe "no answer" . nextWord) . tail . lines

nextWord :: String -> Maybe String
nextWord w = if i1 < 0
             then Nothing
             -- else Just $ take (succ i1) w' ++ sort (drop i1 w')
             --        where i2 = undefined
             --              w' = take i1 w ++ [w!!i2] ++ take (i2 - i1) (drop (succ i1) w) ++ [w!!i1] ++ drop i2 w
             else let i2 = until (\i -> i >= length w - 1 || w!!i1 >= w!!succ i) succ (succ i1)
                      w' = take i1 w ++ [w!!i2] ++ take (i2 - i1 - 1) (drop (succ i1) w) ++ [w!!i1] ++ drop (succ i2) w
                  in  Just $ take (succ i1) w' ++ sort (drop (succ i1) w')
  where i1 = until (\i -> i < 0 || w!!i < w!!succ i) pred $ length w - 2

-- 0 1 2 3 4 5
--     2   4
