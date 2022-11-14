module Quat (
  Quat (..),
  quat_add,
  quat_sub,
  quat_vec,
  quat_scal,
  quat_eq,
  quat_neq
) where

--
-- Import Vec3 and its constructor MakeVec3
--
import Vectors (Vec3 (MakeVec3))

--
-- The class of types `Quat` allows 
-- parametrization by any numeric parameter `a`
--
data Quat a = Quat {w, x, y, z :: a} deriving Show

type QuatD = Quat Double
type QuatI = Quat Integer

quat_vec :: Quat a -> Vec3 a
quat_vec (Quat w x y z) = MakeVec3 x y z

quat_scal :: Quat a -> a
quat_scal q = w q

quat_add :: Num a => Quat a -> Quat a -> Quat a
quat_add (Quat w1 x1 y1 z1) (Quat w2 x2 y2 z2) = 
  Quat (w1 + w2) (x1 + x2) (y1 + y2) (z1 + z2)

quat_sub :: Num a => Quat a -> Quat a -> Quat a
quat_sub a b = 
  Quat (w a - w b) (x a - x b) (y a - y b) (z a - z b)

quat_eq :: Eq a => Quat a -> Quat a -> Bool
quat_eq (Quat w1 x1 y1 z1) (Quat w2 x2 y2 z2) = 
  w1 == w2 && x1 == x2 && y1 == y2 && z1 == z2

quat_neq :: Eq a => Quat a -> Quat a -> Bool
quat_neq (Quat w1 x1 y1 z1) (Quat w2 x2 y2 z2) = 
  w1 /= w2 || x1 /= x2 || y1 /= y2 || z1 == z2

instance (Eq a) => Eq (Quat a) where
  (==) a b = quat_eq a b
  (/=) a b = quat_neq a b

