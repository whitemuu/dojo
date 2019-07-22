{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

-- Complete the angryProfessor function below.
angryProfessor :: Int -> [Int] -> String
angryProfessor k a
  | onTime >= k = "NO"
  | otherwise = "YES"
  where onTime = length $ filter (<=0) a

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

    t <- readLn :: IO Int

    forM_ [1..t] $ \t_itr -> do
        nkTemp <- getLine
        let nk = words nkTemp

        let n = read (nk !! 0) :: Int

        let k = read (nk !! 1) :: Int

        aTemp <- getLine

        let a = Data.List.map (read :: String -> Int) . words $ aTemp

        let result = angryProfessor k a

        hPutStrLn fptr result

    hFlush fptr
    hClose fptr
