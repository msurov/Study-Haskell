
head' (x:_) = x
head' [] = error "empty list doesn't have head"

test_head = do
  let s = "hello"
  let h = head' s
  print $ "head of " ++ s ++ " is " ++ (h : [])

tail' (_:x) = x
tail' [] = error "empty list doesn't have tail"

test_lists = do
  let l = [1,2,3]
  let h = head l
  let t = tail l
  print $ "head is " ++ show h
  print $ "tail is " ++ show h

take' n l =
  case n of
    0 -> []
    _ -> (head l) : (take' (n - 1) (tail l))

test_take' = do
  let l = take' 3 [1,2,3,4,5]
  print $ "sublist is " ++ show l

take''' n l =
  let h = head l in
  let t = tail l in
  if n == 0
  then []
  else h : (take''' (n - 1) t)

test_take''' = do
  let l = take''' 3 [1,2,3,4,5]
  print $ "sublist is " ++ show l

main = do
  test_take'
  test_take'''
  test_lists
  test_head

