triangularNumbers seed term = [(seed + term)] ++ (triangularNumbers (seed + term) (term + 1))
factors n = [ x | x<-[2..n] , (rem n x) == 0]
numFactorsGt x n = if ((length $ factors n) >= x) then True else False
take 1 $ filter (numFactorsGt 500) $ triangularNumbers 0 1 
