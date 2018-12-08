module Test.LeanCheck.Instances.Containers () where

import Test.LeanCheck

import Data.Set (Set)
import qualified Data.Set as Set

import Data.Map (Map)
import qualified Data.Map as Map

instance (Ord a, Listable a) => Listable (Set a) where
  tiers = setCons Set.fromList

instance (Ord a, Ord b, Listable a, Listable b) => Listable (Map a b) where
  tiers = mapCons Map.fromList
