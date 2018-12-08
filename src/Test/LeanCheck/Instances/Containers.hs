module Test.LeanCheck.Instances.Containers () where

import Test.LeanCheck

import Data.Set (Set)
import qualified Data.Set as Set
import qualified Data.Set.Lazy as Lazy

instance (Ord a, Listable a) => Listable (Set a) where
  tiers = setCons Set.fromList

instance (Ord a, Listable a) => Listable (Lazy.Set a) where
  tiers = setCons Lazy.fromList
