import Control.Monad

main :: IO ()
main = do
  t <- readLn
  replicateM_ t $ do
    [b, w] <- getLine >>= return . map read . words
    [bc, wc, z] <- getLine >>= return . map read . words
    let bc' = min bc $ wc + z
        wc' = min wc $ bc + z
    print $ bc' * b + wc' * w
