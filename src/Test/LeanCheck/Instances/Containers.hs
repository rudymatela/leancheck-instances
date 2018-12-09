-- |
-- Module      : Test.LeanCheck.Instances.Containers
-- Copyright   : (c) 2018 Rudy Matela
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- 'Listable' containers.
module Test.LeanCheck.Instances.Containers () where

import Test.LeanCheck

import Data.Set (Set)
import qualified Data.Set as Set

import Data.Map (Map)
import qualified Data.Map as Map

import Data.Sequence (Seq)
import qualified Data.Sequence as Seq

instance (Ord a, Listable a) => Listable (Set a) where
  tiers = setCons Set.fromList

instance (Ord a, Ord b, Listable a, Listable b) => Listable (Map a b) where
  tiers = mapCons Map.fromList

instance (Ord a, Listable a) => Listable (Seq a) where
  tiers = setCons Seq.fromList
