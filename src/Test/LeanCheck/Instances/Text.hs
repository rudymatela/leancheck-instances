module Test.LeanCheck.Instances.Text () where

import Data.Text
import Test.LeanCheck

instance Listable Text where
  tiers = cons1 pack
