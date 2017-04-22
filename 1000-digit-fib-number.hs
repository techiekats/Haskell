fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
1 + (length $ takeWhile (<10^999) fibs)

