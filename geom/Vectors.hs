module Vectors (
  Vec3 (..),
  vec3_add,
  vec3_sub,
  vec3_eq,
  vec3_neq
) where

--
-- The class of types `Vec3` allows 
-- parametrization by any parameter `a`
--
-- Looks like template type
--
-- The type `Vec3` has the only type constructor `MakeVec3`
-- The name of the type constructor may be the same as type name
--
data Vec3 a = MakeVec3 a a a    deriving (Show, Eq)

-- get vector components works for any parameter `a` no 
-- matter if it's algebraic or not
vec3_x :: Vec3 a -> a
vec3_x (MakeVec3 x _ _) = x

vec3_y :: Vec3 a -> a
vec3_y (MakeVec3 _ y _) = y

vec3_z :: Vec3 a -> a
vec3_z (MakeVec3 _ _ z) = z

-- the vector type allows `add` operation if 
-- parameter `a` is of numeric type
-- so we define a class of functions vec3_add when
-- class parameter is a numeric
vec3_add :: Num a => Vec3 a -> Vec3 a -> Vec3 a
vec3_add (MakeVec3 x1 y1 z1) (MakeVec3 x2 y2 z2) = 
  MakeVec3 (x1 + x2) (y1 + y2) (z1 + z2)

-- the same is for sub function
vec3_sub :: Num a => Vec3 a -> Vec3 a -> Vec3 a
vec3_sub a b = 
  MakeVec3 (vec3_x a - vec3_x b) (vec3_y a - vec3_y b) (vec3_z a - vec3_z b)

-- the vector type allows `mul` operation with number if 
-- parameter `a` is of numeric type
vec3_num_mul :: Num a => a -> Vec3 a -> Vec3 a
vec3_num_mul k (MakeVec3 x y z) = MakeVec3 (k * x) (k * y) (k * z)

vec3_mul_num :: Num a => Vec3 a -> a -> Vec3 a
vec3_mul_num v k = vec3_num_mul k v

-- the vector type allows `==` operation with parameter
-- a of class Eq
vec3_eq :: Eq a => Vec3 a -> Vec3 a -> Bool
vec3_eq (MakeVec3 x1 y1 z1) (MakeVec3 x2 y2 z2) = 
  x1 == x2 && y1 == y2 && z1 == z2

vec3_neq :: Eq a => Vec3 a -> Vec3 a -> Bool
vec3_neq (MakeVec3 x1 y1 z1) (MakeVec3 x2 y2 z2) = 
  x1 /= x2 || y1 /= y2 || z1 /= z2

-- this is an option if i wouldn't derive Vec3 type from Eq
-- instance (Eq a) => Eq (Vec3 a) where
--   (==) a b = vec3_eq a b
--   (/=) a b = not (a == b)





