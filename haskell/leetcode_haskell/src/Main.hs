{-# LANGUAGE OverloadedStrings #-}
module Main where
import Web.Scotty
import Data.Text.Lazy (pack)

import Data.Monoid

import Leetcode

import Data.Text.Lazy (Text)
import qualified Data.Text.Lazy as T

-- Hardcoded numbers
num1 :: Int
num1 = 10

num2 :: Int
num2 = 5

-- Function to perform arithmetic operation and generate HTML
performArithmetic :: Int -> Int -> Text
performArithmetic num1 num2 =
    let result = num1 + num2
    in T.pack $ show result

main :: IO ()
main = scotty 3000 $ do
    get "/:word" $ do
        word :: String <- param "word"

        let result = performArithmetic num1 num2

        html $ mconcat [ "<body style='background-color: black; color: white;'>"
                       , "<h1>Running leetcode problems</h1>"
                       , "<p>Number 1: " <> T.pack (show num1) <> "</p>"
                       , "<p>Number 2: " <> T.pack (show num2) <> "</p>"
                       , "<p>Result: " <> result <> "</p>"
                       ]

--        let leetcode = Leetcode
--        runningSumOf1DArray1480
--
--
--        html $ mconcat [ "<body style='background-color: black; color: white;'>"
--                       , "<h1>"
--                       , "Running leetcode problems"
--                       , "</h1>"
--                       , "</body>"
--                       ]


--     leetcode.richestCustomerWealth1672()
--     leetcode.fizzBuzz412()
--     leetcode.numberOfStepsToReduceANumberToZero1342();
