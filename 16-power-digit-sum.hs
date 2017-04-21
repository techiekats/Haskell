digits n = map (\x -> read [x] :: Int) (show n)
sum $ digits (2^1000)