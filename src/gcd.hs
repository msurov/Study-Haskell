
--
-- greatest common divider
--
gcd' a b = if r == 0 then b
           else gcd' b r
  where
    r = mod a b

test_gcd = do
  let z = gcd' 9 15
  print $ "gcd of 9 and 15 is " ++ show z

--
-- the main function
--
main = do
  test_gcd

