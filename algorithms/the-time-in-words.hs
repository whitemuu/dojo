main :: IO ()
main = interact $ solve . map read . lines

solve :: [Int] -> String
solve [h, 0]  = number!!h ++ " o' clock"
solve [h, 1]  = "one minute past " ++ number!!h
solve [h, 59] = "one minute to " ++ number!!h
solve [h, 15] = "quarter past " ++ number!!h
solve [h, 30] = "half past " ++ number!!h
solve [h, 45] = "quarter to " ++ number!!(h + 1)
solve [h, m]
  | m < 30    = number!!m ++ " minutes past " ++ number!!h
  | otherwise = number!!(60 - m) ++ " minutes to " ++ number!!(h + 1)

number :: [String]
number = ["-", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten"
         ,"eleven", "twelve", "thirteen", "fourteen", "-"
         ,"sixteen", "seventeen", "eighteen", "nineteen", "twenty"
         ,"twenty one", "twenty two", "twenty three", "twenty four", "twenty five"
         ,"twenty six", "twenty seven", "twenty eight", "twenty nine"]
