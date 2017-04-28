isTriplet (a, b, c) = if (c^2) == (a^2 + b^2) then True else False
multiplyTriple (a,b,c) = a*b*c
multiplyTriple $ last $ filter isTriplet [(a,b,c) | a<-[1..500], b<- [a..1000-a], c<-[1000 -a -b]]
