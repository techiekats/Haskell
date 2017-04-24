FROM haskell:8

RUN cabal update && cabal install arithmoi
##After this change the working directory and run docker build . 
##import Math.NumberTheory.Primes