main :: IO ()
main = interact $ unlines . map (show . grade . read) . tail . words

grade :: Int -> Int
grade a
  | a >= 38 && m5 < 3 = a + m5
  | otherwise = a
  where m5 = 5 - a `mod` 5

-- grade :: Int -> Int
-- grade a
--   | a < 38 = a
--   | a `rem` 5 >= 3 = 5 * (a `div` 5 + 1)
--   | otherwise = a
