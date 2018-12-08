module Test.LeanCheck.Instances.Containers () where

import Test.LeanCheck

import Data.Set (Set)
import qualified Data.Set as Set

instance (Ord a, Listable a) => Listable (Set a) where
  tiers = setCons Set.fromList
