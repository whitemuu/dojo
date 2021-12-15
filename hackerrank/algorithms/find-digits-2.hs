main :: IO ()
main = interact $ unlines . map (show . f . read) . tail . lines

-- f s 0 = 0
-- f s n = (if (y == 0) then 0 else (if (s `mod` y == 0) then 1 else 0) ) + (f s (n `div` 10))
--  where y = n `mod` 10

f :: Int -> Int
f x = helper x
  where helper 0 = 0
        helper n = helper (n `div` 10) + if m /=0 && x `mod` m == 0 then 1 else 0
          where m = n `mod` 10

-- credit: https://www.hackerrank.com/rest/contests/master/challenges/find-digits/hackers/ankitku/download_solution
