import           Data.Maybe

main :: IO ()
main = interact $ unlines . map (fromMaybe "no answer" . nextPermutation) . tail . lines

nextPermutation :: [Char] -> Maybe [Char]
nextPermutation s
  | i == -1 = Nothing
  | otherwise = let i' = getj s i
                in Just $
                   take i s ++ [s!!i'] ++
                   reverse (take (i' - i - 1) (drop (succ i) s)
                            ++ [s!!i]
                            ++ drop (succ i') s)
  where i = geti s

-- 1 2 3 4 5 6
-- 0 1 2 3 4 5
--     i   i'

getj :: [Char] -> Int -> Int
getj s i = helper (succ i)
  where helper j
          | j > length s - 1 || s!!i >= s!!j = pred j
          | otherwise = helper (succ j)


geti :: [Char] -> Int
geti s = helper (length s - 2)
  where helper (-1) = -1
        helper i
          | s!!i < s!!succ i = i
          | otherwise = helper (pred i)
