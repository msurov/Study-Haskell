#!/bin/bash
set -e
FLAGS=-O2

ghc lists.hs $FLAGS
ghc bisect.hs $FLAGS
ghc gcd.hs $FLAGS
ghc types.hs $FLAGS
ghc quat.hs $FLAGS
ghc infinite_list.hs $FLAGS
time ./gcd
time ./lists
time ./bisect
time ./types
time ./quat
time ./infinite_list
