

data Vec3 a = Vec3 a a a    deriving Show
data Quat a = Quat a a a a  deriving Show

vec :: Quat a -> Vec3 a
vec (Quat _ x y z) = Vec3 x y z

scal :: Quat a -> a
scal (Quat w _ _ _) = w

add :: Num a => Quat a -> Quat a -> Quat a
add (Quat w1 x1 y1 z1) (Quat w2 x2 y2 z2) = 
  Quat (w1 + w2) (x1 + x2) (y1 + y2) (z1 + z2)

quat_test = do
  let q = Quat 1 2 3 4
  let v = vec q
  let w = scal q
  print $ show q ++ " vector part is " ++ show v
  print $ show q ++ " scalar part is " ++ show w

main = do
  quat_test

