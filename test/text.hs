-- Copyright (c) 2015-2018 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).
import System.Exit (exitFailure)
import Data.List (elemIndices)

import Test.LeanCheck
import Test.LeanCheck.Instances

main :: IO ()
main =
  case elemIndices False tests of
  [] -> putStrLn "Tests passed!"
  is -> putStrLn ("Failed tests:" ++ show is) >> exitFailure

tests :: [Bool]
tests =
  [ True
  ]
