-- Copyright (c) 2015-2018 Rudy Matela.
-- Distributed under the 3-Clause BSD licence (see the file LICENSE).
import System.Exit (exitFailure)
import Data.List (elemIndices)
import qualified Data.Text as T
import qualified Data.ByteString as BS
import qualified Data.ByteString.Lazy as BL
import Numeric.Natural

import Test.LeanCheck
import Test.LeanCheck.Instances

main :: IO ()
main =
  case elemIndices False (tests 1000) of
  [] -> putStrLn "Tests passed!"
  is -> putStrLn ("Failed tests:" ++ show is) >> exitFailure

tests :: Int -> [Bool]
tests n =
  [ True

  , fails n $ \ts -> T.words (T.unwords ts) == ts
  , fails n $ \t ->   T.unwords (T.words t) == t
  , holds n $ \ts ->   T.words (T.unwords (T.words ts)) == T.words ts

  , holds n $ \x y -> x + y == y + (x :: Natural)
  , fails n $ \x y -> x + y == (x :: Natural)

  , fails n $ \bs -> BS.reverse bs == bs
  , holds n $ \bs -> BS.reverse (BS.reverse bs) == bs

  , fails n $ \bs -> BL.reverse bs == bs
  , holds n $ \bs -> BL.reverse (BL.reverse bs) == bs
  ]
