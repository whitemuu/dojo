import           Data.List

type Square = [[Int]]

main = interact $ show . solve . map (map read . words) .lines

solve :: Square -> Int
solve s = minimum $ map (distance s) allMagic

distance :: Square -> Square -> Int
distance a b = sum $ map abs $ zipWith (-) (concat a) (concat b)

magic :: Square
magic = [[8, 3, 4]
        ,[1, 5, 9]
        ,[6, 7, 2]]

allMagic :: [Square]
allMagic = [magic , mirrorV magic , mirrorH magic , mirrorH $ mirrorV magic
           ,magic', mirrorV magic', mirrorH magic', mirrorH $ mirrorV magic']
  where mirrorV = map reverse
        mirrorH = reverse
        magic'  = transpose magic

-- pp :: Square -> IO ()
-- pp = putStr . unlines . map (unwords . map show)


