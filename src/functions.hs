
fact :: Integer -> Integer
fact n
  | n == 0    = 1
  | otherwise = n * fact (n - 1)

fact' :: Integer -> Integer
fact' n = if n == 0 then 1 else n * fact' (n - 1)

fact'' :: Integer -> Integer
fact'' n = helper n 1
  where
    helper n acc
      | n > 1     = helper (n - 1) (n * acc)
      | otherwise = acc

fact''' :: Integer -> Integer
fact''' n = 
  let 
    helper n acc
      | n > 1     = helper (n - 1) (n * acc)
      | otherwise = acc
  in
    helper n 1

main = do
  let n = 52345
  let a = div (fact''' n) (fact''' (n - 1))
  print a

