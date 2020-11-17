main = interact $ solve

solve :: String -> String
solve t = case drop 8 t of
  "AM" -> if h == 12 then "00" ++ ms else hms
  "PM" -> if h == 12 then hms else show (12 + h) ++ ms
  where h = read $ take 2 t
        ms = take 6 $ drop 2 t
        hms = take 8 t
