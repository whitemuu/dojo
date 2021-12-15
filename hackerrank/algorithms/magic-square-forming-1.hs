import           Data.List

type Squre = [[Int]]

main :: IO ()
main = interact $ show . solve . map (map read . words) . lines

magic = [[8, 1, 6]
        ,[3, 5, 7]
        ,[4, 9, 2]]

rotate :: Squre -> Squre
rotate = map reverse . transpose

magics = (take 4 $ iterate rotate magic) ++
         (take 4 $ iterate rotate $ reverse magic)

magicMinus :: Squre -> Squre -> Int
magicMinus a b = sum $ map abs $ zipWith (-) (concat a) (concat b)

solve :: Squre -> Int
solve s = minimum $ map (magicMinus s) magics
