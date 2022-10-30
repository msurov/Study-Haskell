-- fac 0 = 1
-- fac n = n * fac (n-1)

fac n = product [1..n]

twice x = 2 * x

main = do
	print "enter the number"
	line <- getLine
	let num = (read line :: Integer)
	let fac_num = (fac num)
	print("Fact of " ++ (show num) ++ " is " ++ (show fac_num))
