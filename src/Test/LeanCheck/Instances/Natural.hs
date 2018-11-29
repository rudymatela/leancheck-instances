module Test.LeanCheck.Instances.Natural () where

import Numeric.Natural
import Test.LeanCheck

instance Listable Natural where
  list = [0..]
