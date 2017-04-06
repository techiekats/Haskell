import Data.List
import Math.NumberTheory.Primes

foldl (+) 0 $  takeWhile (<2000000) primes