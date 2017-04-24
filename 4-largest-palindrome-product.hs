import Data.List
numDigits n = length $ map (\x -> read [x] :: Int) (show n) 
lsb x = mod x 10
reverse x = if numDigits x == 1 then x else ((lsb x) * 10 ^ ((numDigits x) - 1)) + (reverse  (quot x 10))
palindrome x = if (x == reverse x) then True else False
maximum $ filter palindrome $ [(a * b)| a<- [999,998..100], b<- [999,998..100]]