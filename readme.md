# The project aims to keep the basic Haskell constructions

## Variables, Functions
No much difference between variables and functuons. The name should begin from `a-z` symbols.
Sample function:
```haskell
clamp a amin amax = 
  min (max a amin) amax
```
Sample variable
```haskell
a :: Int
a = div 136 99
```

## Function local variables


## Lambda functions
The function adds three values
```haskell
add = \x y z = x + y + z
```
or
```haskell
add x y z = x + y + z
```

## Function arguments matching
There are several ways:
```haskell
--- approach 1
fact 0 = 1
fact n = n * fact (n - 1)

--- approach 2
fact n 
  | n == 0    = 1
  | otherwise = n * fact (n - 1)

--- approach 3
fact n = if n == 0 then 1
  else n * fact (n - 1)

--- approach 4
fact n = case n of
  0 -> 1
  _ -> n * fact (n - 1)
```

## Lists
```haskell
a = [1,2,3]
b = 1 : 2 : 3 : []
c = "abc"
d = 'a' : 'b' : "c"

---
--- access elements
---
head a == 1
tail c == "bc"
b !! 1 == 2
```

