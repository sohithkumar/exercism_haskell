module Fizzbuzz where

fizzbuzzSingle :: Int -> String
fizzbuzzSingle n 
    | (mod n 15) == 0 = "fizzbuzz"
    | (mod n 3) == 0  = "fizz"
    | (mod n 5) == 0  = "buzz"
    | otherwise  = show n

fizzbuzzAll :: [Int] -> [String]
fizzbuzzAll listN = map fizzbuzzSingle listN

main :: IO()
main = mapM_ putStrLn (fizzbuzzAll [1..100])