{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
-- import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

-- Complete the permutationEquation function below.
permutationEquation p = map (flip getIndex p) $ map (flip getIndex p) [1..n]
  where n = length p

getIndex :: Int -> [Int] -> Int
getIndex n ls = helper n $ zip [1..] ls
  where helper n ((i, v):xs)
          | n == v = i
          | otherwise = helper n xs

readMultipleLinesAsStringArray :: Int -> IO [String]
readMultipleLinesAsStringArray 0 = return []
readMultipleLinesAsStringArray n = do
    line <- getLine
    rest <- readMultipleLinesAsStringArray(n - 1)
    return (line : rest)

main :: IO()
main = do
    stdout <- getEnv "OUTPUT_PATH"
    fptr <- openFile stdout WriteMode

    n <- readLn :: IO Int

    pTemp <- getLine

    let p = Data.List.map (read :: String -> Int) . words $ pTemp

    let result = permutationEquation p

    hPutStrLn fptr $ intercalate "\n" $ Data.List.map (\x -> show x) $ result

    hFlush fptr
    hClose fptr
