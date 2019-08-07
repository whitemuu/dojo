import Data.Char

main :: IO ()
main = do
  ascii <- map read . words <$> getLine
  w <- getLine
  print $ solve ascii w

solve :: [Int] -> String -> Int
solve ascii w = maximum (map getH w) * length w
  where getH c = ascii !! (ord c - ord 'a')
