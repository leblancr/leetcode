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
    [ T.pack ("<h3>1480. Running Sum of 1D Array</h3>")
    , T.pack ("<p>Numbers: ")
    , numbersHtml
    , T.pack ("<p>Result List: ")
    , resultListHtml
    , T.pack ("</p>")
    ]
  where
    numbers :: [Int]
    numbers = [1, 2, 3, 4, 5]
    resultList :: [Int]
    resultList = scanl1 (+) numbers
    
    -- Convert each number to Text and concatenate them with commas
    -- T.pack converts string literal ([Char]) to Text (html)
    numbersHtml :: Text  -- html must be of type Text
    numbersHtml = T.intercalate (T.pack ", ") (map (T.pack . show) numbers)

    resultListHtml :: Text  -- html must be of type Text
    resultListHtml = T.intercalate (T.pack ", ") (map (T.pack . show) resultList)
