{-# LANGUAGE OverloadedStrings, ScopedTypeVariables #-}
module Main (main) where
import Web.Scotty

import Data.Monoid

import Leetcode

main :: IO ()
main = scotty 3000 $ do
    get "/:word" $ do
        word :: String <- param "word"

        let result = runningSumOf1DArray1480

        html $ mconcat [ "<body style='background-color: black; color: white;'>"
                       , "<h1>Running leetcode problems</h1>"
--                       , "<p>Number 1: " <> T.pack (show num1) <> "</p>"
--                       , "<p>Number 2: " <> T.pack (show num2) <> "</p>"
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
