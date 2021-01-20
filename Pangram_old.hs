module Pangram (isPangram) where
import Data.Char

toLowerString :: String -> String
toLowerString text = map toLower text

checkAlphabetExistence :: String -> [Bool]
checkAlphabetExistence text = map (\x -> elem x text) alphabets
                                where alphabets = "abcdefghijklmnopqrstuvwxyz"

isPangram :: String -> Bool
isPangram text = not $ elem False (checkAlphabetExistence $ toLowerString text)