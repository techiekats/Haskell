--https://www.hackerrank.com/challenges/reverse-factorization/problem

{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.List
import System.Environment
import System.IO

parseInt x = read x :: Integer

isFactor n f = if (mod n f == 0) then True else False

factors xs n =  if (n== 1 || xs == []) then [] 
                else if (mod n (head xs) == 0) then (head xs) : (factors xs (quot n (head xs)))
                else factors (tail xs) n

main :: IO()
main = do
    input <- getLine
    let inputSplit = words input
    let n = read (inputSplit !! 0) :: Integer
    let q = read (inputSplit !! 1) :: Integer
    setTemp <- getLine
    let set = map (parseInt) (words setTemp)
    let factorSet = reverse $ sort $ filter (isFactor n) set
    let reducedFactors = factors factorSet n
    let checkProd = if ((foldl (*) 1 reducedFactors) == n ) then True else False
    let result = if (checkProd == False) then [-1] else reverse reducedFactors
    let l = length result
    mapM_ (print . show) result
        