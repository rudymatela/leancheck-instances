module Test.LeanCheck.Instances.ByteString () where

import Test.LeanCheck
import Data.ByteString.Lazy as Lazy
import Data.ByteString as Strict
import Data.Word

tiersBytes :: [[ Word8 ]]
tiersBytes = toTiers $ [0..127] +| [255,254..128]

tiersListBytes :: [[ [Word8] ]]
tiersListBytes = listsOf tiersBytes

instance Listable Lazy.ByteString where
  tiers = mapT Lazy.pack tiersListBytes

instance Listable Strict.ByteString where
  tiers = mapT Strict.pack tiersListBytes
