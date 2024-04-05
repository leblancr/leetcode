module Leetcode (
    runningSumOf1DArray1480,  -- Exporting the functions here
    richestCustomerWealth1672,
    fizzBuzz412,
    numberOfStepsToReduceANumberToZero1342
    ) where

import Data.Text.Lazy (Text)
import qualified Data.Text.Lazy as T
import Data.Dynamic

--  functionName :: Type1 -> Type2 -> ... -> ReturnType
--  functionName parameter1 parameter2 ... = expression

runningSumOf1DArray1480 :: Text
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
    resultList = scanl1 (+) numbers  -- scanl1 scans the list and applies operator to each item and accumulates
    
    -- Convert each number to Text and concatenate them with commas
    -- T.pack converts string literal ([Char]) to Text (html)
    numbersHtml :: Text  -- html must be of type Text
    numbersHtml = T.intercalate (T.pack ", ") (map (T.pack . show) numbers)

    resultListHtml :: Text  -- html must be of type Text
    resultListHtml = T.intercalate (T.pack ", ") (map (T.pack . show) resultList)

richestCustomerWealth1672 :: Text
richestCustomerWealth1672 = T.concat
    [ T.pack ("<h3>1672. Richest Customer Wealth</h3>")
    , T.pack ("<p>Accounts: ")
    , accountsHtml
    , T.pack ("<p>Highest Balance: ")
    , highestBalanceHtml
    , T.pack ("</p>")
    ]
  where
    accounts :: [[Int]]
    accounts = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    highestBalance :: Int
    highestBalance = (maximum . map maximum) accounts
  
    
    -- Convert each number to Text and concatenate them with commas
    -- T.pack converts string literal ([Char]) to Text (html)
    accountsHtml :: Text  -- html must be of type Text
    accountsHtml = T.intercalate (T.pack ", ") (map (T.pack . show) accounts)

    highestBalanceHtml :: Text  -- html must be of type Text
    highestBalanceHtml = T.pack (show highestBalance)  -- Convert Int to Text

fizzBuzz412 :: Text
fizzBuzz412 = T.concat
    [ T.pack ("<h3>412. Fizz Buzz</h3>")
    , T.pack ("<p>Limit: ")
    , limitHtml
    , T.pack ("<p>Result: ")
    , resultHtml
    , T.pack ("</p>")
    ]
  where
    limit :: Int
    limit = 16

    result :: [Dynamic]
    result = map (toDyn . fizzBuzz) [1..limit]

    fizzBuzz :: Int -> String
    fizzBuzz n
      | n `mod` 3 == 0 && n `mod` 5 == 0 = "FizzBuzz"
      | n `mod` 3 == 0 = "Fizz"
      | n `mod` 5 == 0 = "Buzz"
      | otherwise = show n
  
    -- Convert each number to Text and concatenate them with commas
    -- T.pack converts string literal ([Char]) to Text (html)
    limitHtml :: Text  -- html must be of type Text
    limitHtml = T.pack (show limit)  -- Convert Int to Text
    
    -- Convert Dynamic values to Text
    dynToText :: Dynamic -> Text
    dynToText dyn =
        case fromDynamic dyn of
            Just textValue -> T.pack textValue  -- Convert String to Text
            Nothing -> T.pack $ show (fromDyn dyn "")
                            
    -- Convert each number to Text and concatenate them with commas
    resultHtml :: Text
    resultHtml = T.intercalate (T.pack ", ") $ map dynToText result

numberOfStepsToReduceANumberToZero1342 :: Text
numberOfStepsToReduceANumberToZero1342 = T.concat
    [ T.pack ("<h3>1342. Number of Steps to Reduce a Number to Zero</h3>")
    , T.pack ("<p>Number: ")
    , numberHtml
    , T.pack ("<p>Number of steps: ")
    , resultHtml
    , T.pack ("</p>")
    ]
  where
    number :: Int
    number = 14
    
    steps :: Int
    steps = reduceToZero number 0
    
    reduceToZero :: Int -> Int -> Int
    reduceToZero 0 steps = steps
    reduceToZero number steps
      | even number = reduceToZero (number `div` 2) (steps + 1)
      | otherwise   = reduceToZero (number - 1) (steps + 1)
    
    numberHtml :: Text
    numberHtml = T.pack (show number)

    resultHtml :: Text
    resultHtml = T.pack (show steps)