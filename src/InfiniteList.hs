
--
-- the variable (not function, but term) fib contains infinite sequence
--
fib :: [Integer]
fib = helper 0 1
  where
    helper 0 1 = 0 : helper 1 1
    helper a1 a2 = a1 : helper a2 (a1 + a2)

--
-- ones
--
ones :: [Integer]
ones = 1 : ones

--
-- tests
--
ones_test = do
  s <- getLine
  let i = (read s :: Int)
  let a = ones !! i
  print $ (show i) ++ "-th element if the infinite sequence is " ++ (show a)

fib_test = do
  s <- getLine
  let i = (read s :: Int)
  let a = fib !! i
  print $ "Fibonacci " ++ (show i) ++ "-th element is " ++ (show a)

--
-- main
--
main = do
  fib_test

