-- |
-- Module      : Test.LeanCheck.Instances.Containers
-- Copyright   : (c) 2019 Authors of leancheck-instances
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- 'Listable' something.
module Test.LeanCheck.Instances.These () where

import Test.LeanCheck
import Data.These

instance (Listable a, Listable b) => Listable (These a b) where
  tiers  =  reset
         $  cons1 This
         \/ cons1 That
         \/ cons2 These
