fac_v1 0 = 1
fac_v1 n = n * fac_v1 (n-1)

fac_v2 n = product [1..n]

twice x = 2 * x

main = do
    print "enter the number"
    line <- getLine
    let num = (read line :: Integer)
    let fac_num = (fac_v1 num)
    print("Fact of " ++ (show num) ++ " is " ++ (show fac_num))
