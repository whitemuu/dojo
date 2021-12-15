fizzbuzz :: [String]
fizzbuzz = map fb [1..100]
  where fb i
          | i `mod` (3 * 5) == 0 = "FizzBuzz"
          | i `mod` 3 == 0 = "Fizz"
          | i `mod` 5 == 0 = "Buzz"
          | otherwise = show i
