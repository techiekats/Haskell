--https://www.hackerrank.com/challenges/reverse-factorization/problem

{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.List
import System.Environment
import System.IO

parseInt x = read x :: Integer

main :: IO()
main = do
    input <- getLine
    let inputSplit = words input
    let n = read (inputSplit !! 0) :: Integer
    let q = read (inputSplit !! 1) :: Integer
    setTemp <- getLine
    let set = map (parseInt) (words setTemp)
    print (length set)
    -- forM_ [1..q] $ \qItr -> do
    --     a <- readLn :: IO Integer
    --     print a