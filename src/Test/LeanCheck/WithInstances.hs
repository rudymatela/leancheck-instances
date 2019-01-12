-- |
-- Module      : Test.LeanCheck.WithInstances
-- Copyright   : (c) 2018-2019 Rudy Matela
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- "Test.LeanCheck" with additional 'Listable' instances.
--
-- Importhing this is the same as:
--
-- > import Test.LeanCheck
-- > import Test.LeanCheck.Instances
module Test.LeanCheck.WithInstances (module Test.LeanCheck, Listable) where

import Test.LeanCheck
import Test.LeanCheck.Instances
