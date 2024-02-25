module Leetcode (
    runningSumOf1DArray1480,  -- Exporting the function here
--    richestCustomerWealth1672,
--    fizzBuzz412,
--    numberOfStepsToReduceANumberToZero1342
    ) where

import Data.Text.Lazy (Text, pack)
import qualified Data.Text.Lazy as T

--  functionName :: Type1 -> Type2 -> ... -> ReturnType
--  functionName parameter1 parameter2 ... = expression

runningSumOf1DArray1480 :: Text  -- Function signature returning HTML content as Text
runningSumOf1DArray1480 = T.concat
    [ "<h1>1480. Running Sum of 1D Array</h1>"
    , "<p>Result: "
    , T.pack (show result)
    , "</p>"
    ]
  where
    num1 :: Int
    num1 = 10

    num2 :: Int
    num2 = 5

    result :: Int
    result = num1 + num2


