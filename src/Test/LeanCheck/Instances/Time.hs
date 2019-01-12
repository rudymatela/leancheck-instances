-- |
-- Module      : Test.LeanCheck.Instances.Time
-- Copyright   : (c) 2019 Rudy Matela
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- Declares 'Listable' time datatype instances.
--
-- Admitedly, these 'Listable' enumerations are defined somewhat arbitrarily...
module Test.LeanCheck.Instances.Time () where

import Data.Time
import Test.LeanCheck

-- This could be made more efficient.
-- Nevertheless, it is probably efficient enough for millions of tests.
binarySearchIndexes :: (Num a, Integral a) => a -> a -> [a]
binarySearchIndexes min max
  | min > max   = []
  | max == min  = [max]
  | otherwise   =  let mid = (max - min) `div` 2 + min in
                   mid : (binarySearchIndexes (mid + 1) max +| binarySearchIndexes min (mid - 1))

binarySearchIndexesThen :: (Num a, Integral a) => a -> a -> [a]
binarySearchIndexesThen min max  =  binarySearchIndexes min max ++ ([(min-1),(min-2)..] +| [(max+1)..])

secondsInADay :: Num a => a
secondsInADay  =  24*60*60-1

-- | This listable enumeration starts with January 2019 then switches back and
--   forth between past and future.
--
-- > list :: [Day] =
-- >   [ 2019-01-01
-- >   , 2099-01-24
-- >   , 1938-12-09
-- >   , 2139-02-05
-- >   , 1978-12-20
-- >   , 2059-01-12
-- >   , 1898-11-27
-- >   , 2159-02-11
-- >   , 1998-12-26
-- >   , 2079-01-18
-- >   , ...
-- >   ]
instance Listable Day where
  list  =  map ModifiedJulianDay $ binarySearchIndexesThen 0 116969

instance Listable DiffTime where
  tiers  =  mapT (\(x,y) -> fromInteger x / fromInteger y) . reset
         $  tiers `suchThat` \(n,d) -> n > 0 && d > 0 && n `gcd` d == 1


instance Listable UTCTime where
  tiers  =  cons2 UTCTime
