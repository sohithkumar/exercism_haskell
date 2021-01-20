module Bob (responseFor) where
import Data.Char

isAllCaps :: String -> Bool
isAllCaps xs 
    | (filter isAlpha xs == "") = False
    | otherwise =  all (\x -> elem x $ ['A'..'Z']) (filter isAlpha xs)

stripSpace :: String -> String
stripSpace xs = filter (\x -> not $ elem x [' ','\n','\r','\t']) xs

isQuestion :: String -> Bool
isQuestion xs 
    | (stripSpace xs == "") = False
    | otherwise = (last $ stripSpace xs) == '?'

allEmpty :: String -> Bool
allEmpty xs 
    | stripSpace xs == "" = True
    | all (\x -> elem  x [' ','\n','\r','\t']) xs = True
    | otherwise = False

responseFor :: String -> String
responseFor xs 
    | (not $ isAllCaps xs) && (isQuestion xs)  = "Sure."
    | (isAllCaps xs) && (not $ isQuestion xs) = "Whoa, chill out!"
    | (isAllCaps xs) && (isQuestion xs) = "Calm down, I know what I'm doing!"
    | (allEmpty xs) = "Fine. Be that way!"
    | otherwise = "Whatever."