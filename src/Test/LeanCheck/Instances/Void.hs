-- |
-- Module      : Test.LeanCheck.Instances.Void
-- Copyright   : (c) 2022 Rudy Matela
-- License     : 3-Clause BSD  (see the file LICENSE)
-- Maintainer  : Rudy Matela <rudy@matela.com.br>
--
-- Declares a 'Listable' 'Void' instance.
module Test.LeanCheck.Instances.Void () where

import Data.Void (Void)
import Test.LeanCheck

instance Listable Void where  list  =  []
