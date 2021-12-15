main :: IO ()
main = do
  s <- getLine
  n <- readLn
  -- Time limit exceeded
  print . length . filter (=='a') . take n $ cycle s
