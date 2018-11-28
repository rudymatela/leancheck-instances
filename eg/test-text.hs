-- test-list.hs -- example program, testing Data.List using LeanCheck
--
-- Copyright (c) 2017-2018 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).
import Test.LeanCheck
import Test.LeanCheck.Instances
import Data.Text

main :: IO ()
main = do
  check $ \t1 t2 -> t1 `append` t2 == t2 `append` t1
