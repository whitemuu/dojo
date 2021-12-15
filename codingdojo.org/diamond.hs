--   A
--  B B
-- C   C
--  B B
--   A

main :: IO ()
main = putStr $ unlines $ diamond 'E'

diamond :: Char -> [String]
diamond c = init half ++ reverse half
  where ls = ['A'..c]
        quarter = [replicate i '-' ++ [ch] ++ replicate (length ls - i) '-' | (i, ch) <- zip [0..] ls]
        half = zipWith (++) (map reverse quarter) (map (drop 1) quarter)
