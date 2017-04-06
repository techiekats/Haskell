FROM haskell:8
RUN cabal update && cabal install arithmoi
##After this docker run -it --rm ffe8adb8ece4
##import Math.NumberTheory.Primes