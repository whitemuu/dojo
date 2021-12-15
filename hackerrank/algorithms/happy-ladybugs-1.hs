import Data.List
import Debug.Trace


main = do
  games<-map (head . tail) . chunksOf 2 . drop 1 . words <$> getContents
  let output = map (bToS .  solve) games
  mapM putStrLn output

chunksOf n ns | null ns = []
              | otherwise =  take n ns : chunksOf n (drop n ns)

solve board | any (=='_') board = solveJump board
            | otherwise         = solveStatic board
  where solveStatic = all (>1) . map length . group
        solveJump = solveStatic . sort . filter (/='_')

bToS :: Bool -> String
bToS True = "YES"
bToS False = "NO"
