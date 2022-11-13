
--
-- Infinite sequence
--
test_inf_seq = do
  let ones = 1 : ones
  let one = ones !! 17856394
  print $ show one

--
-- run all tests
--
main = do
  test_inf_seq

