sumDigits x = if (x == 0) then 0 else  (x `mod` 10) + sumDigits (quot x 10) 
maximum $ map sumDigits $ [ a^b | a <- [1..99], b <- [1..99]]
