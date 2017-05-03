triangularNumbers seed term = [(seed + term)] ++ (triangularNumbers (seed + term) (term + 1))
factors n m = if (rem n m) == 0 then (if (m > (quot n m)) then [] else if (m==(quot n m)) then [m] else m : (quot n m) : factors n (m+1)) else factors n (m+1) numFactorsGt x n = if ((length $ factors n) >= x) then True else False
numFactorsGt x n = if (length $ factors n 1) > x then True else False
take 1 $ filter (numFactorsGt 500) $ triangularNumbers 0 1 

