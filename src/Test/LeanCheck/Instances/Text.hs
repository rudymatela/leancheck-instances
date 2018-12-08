module Test.LeanCheck.Instances.Text () where

import Data.Text
import qualified Data.Text.Lazy as Lazy
import Test.LeanCheck

instance Listable Text where
  tiers = cons1 pack

instance Listable Lazy.Text where
  tiers = cons1 Lazy.pack
