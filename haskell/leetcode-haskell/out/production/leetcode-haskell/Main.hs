{-# LANGUAGE OverloadedStrings, ScopedTypeVariables #-}
module Main (main) where
import Web.Scotty

import Leetcode

main :: IO ()
main = scotty 3000 $ do
    get "/:leetcode" $ do
        word :: String <- param "word"

        -- Each function returns html, concat them all together
        --let runningSumOf1DArray1480Html = runningSumOf1DArray1480
        let richestCustomerWealth1672Html = richestCustomerWealth1672

        html $ mconcat [ "<head>"
                       , "<style>"
                       , "body { background-color: black; color: white; margin: 0; padding: 0; }"
                       , "h3 { margin: 0; padding: 0; }"
                       , "h4 { margin: 0; padding: 0; }"                       , "p { font-size: 18px; margin: 0; padding: 0; }"
                       , "</style>"
                       , "</head>"
                   --     , "<body style='background-color: black; color: white;'>"
                       , "<h2>Running leetcode problems</h2>"
                       --, "<p>" <> runningSumOf1DArray1480Html <> "</p>"
                       , "<p>" <> richestCustomerWealth1672Html <> "</p>"
                       ]

--        let leetcode = Leetcode
--        runningSumOf1DArray1480
--

--     leetcode.richestCustomerWealth1672()
--     leetcode.fizzBuzz412()
--     leetcode.numberOfStepsToReduceANumberToZero1342();
