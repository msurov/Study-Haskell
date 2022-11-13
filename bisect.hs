
bisect :: Int -> [Int] -> Int
bisect a l = bisect_helper a l 0 (length l)
  where
    bisect_helper a l from to = if left < 2 then from
                                else if a < l !! half then bisect_helper a l from half
                                     else bisect_helper a l half to
      where
        half = div (from + to) 2
        left = to - from

bisect_test = do
  let l = [0 .. 10000]
  let e = bisect 10 l
  print $ "index is " ++ show e

main = do
  bisect_test

