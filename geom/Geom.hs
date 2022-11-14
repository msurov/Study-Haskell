import Quat ( Quat (Quat), quat_add, quat_sub, quat_scal, quat_vec )

test_quat = do
  let a = Quat 1 2 3 4
  let b = Quat 4 2 2 1
  let c = quat_sub a b
  let v = quat_vec a
  let w = quat_scal a
  print $ show a ++ " vector part is " ++ show v
  print $ show a ++ " scalar part is " ++ show w
  print $ show a ++ " - " ++ show b ++ " = " ++ show c

  let r = a /= b
  print r


main = do
  test_quat

