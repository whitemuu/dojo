{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.Array
import Data.Bits
import Data.List
import Data.List.Split
import Data.Set
import Debug.Trace
import System.Environment
import System.IO
import System.IO.Unsafe

-- Complete the catAndMouse function below.
catAndMouse :: Int -> Int -> Int -> String
catAndMouse x y z
  | distance (x, z) < distance (y, z) = "Cat A"
  | distance (x, z) > distance (y, z) = "Cat B"
  | otherwise = "Mouse C"
  where distance = abs . uncurry (-)

main :: IO()
main = do
    stdout <- getEnv "OUTPUT_PATH"
    fptr <- openFile stdout WriteMode

    q <- readLn :: IO Int

    forM_ [1..q] $ \q_itr -> do
        xyzTemp <- getLine
        let xyz = words xyzTemp

        let x = read (xyz !! 0) :: Int

        let y = read (xyz !! 1) :: Int

        let z = read (xyz !! 2) :: Int

        let result = catAndMouse x y z

        hPutStrLn fptr result

    hFlush fptr
    hClose fptr
