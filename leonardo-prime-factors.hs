--https://www.hackerrank.com/challenges/leonardo-and-prime/problem

{-# LANGUAGE FlexibleInstances, UndecidableInstances, DuplicateRecordFields #-}

module Main where

import Control.Monad
import Data.List
import Data.Set
import System.Environment
import System.IO

primeCount n = length $ distinctFactors n (primesUpto (sqrt n) ([3,2]) 5)

distinctFactors n xs =    if (n == 1) then [] 
                            else if (mod n head(xs) == 0) then head(xs) : (distinctFactors (continuousDivide (head xs) n) tail (xs))
                            else distinctFactors n tail(xs)

continuousDivide x seed = if (mod x seed == 0) then continuousDivide (x/seed) seed else x

primesUpto n ps next =  if (next >= n) then reverse ps
                        else if isPrime (next) ps then primesUpto n (next : ps) (next +2)
                        else primesUpto n ps (next+2)

isPrime n ps = if (ps == []) then True else if ((mod n (head ps)) == 0) then False else isPrime n (tail ps)                 

main :: IO()
main = do
    q <- readLn :: IO Int
    forM_ [1..q] $ \qItr -> do
        n <- readLn :: IO Integer
        let result = primeCount n
        print result