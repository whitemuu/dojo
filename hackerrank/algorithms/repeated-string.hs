main :: IO ()
main = do
  s <- getLine
  n <- readLn
  let (q, r) = n `quotRem` length s
      countAs = length . filter (== 'a')

  print (countAs s * q + countAs (take r s))

-- https://www.hackerrank.com/rest/contests/master/challenges/repeated-string/hackers/QuomoZ/download_solution?primary=true
