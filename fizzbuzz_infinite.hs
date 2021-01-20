module Fizzbuzz where
-- fizzbuzz with infinite lists
cycle1 = cycle ["", "" , "fizz"]
-- ["", "" , "fizz","", "" , "fizz",", """, "" , "fizz"...]

cycle2 = cycle ["", "", "", "", "buzz"]
-- ["", "",    "",   "", "buzz","", "", "", "buzz","", "", "", "", "buzz"....]

infinite_zip = zip cycle1 cycle2
-- [("",""), ("",""),("fizz",""),("",""), (,"", "buzz").........]

func_concat (fst, snd) = fst ++ snd
infinite_cycle1_2 = map func_concat infinite_zip
-- ["","","fizz","","buzz","fizz"....................]

cycle3 = map show [1..]
-- ["1","2","3","4",.....]
infinite_cycle1_2_3 = zip infinite_cycle1_2 cycle3
-- [("","1"),("","2"),("fizz","3"),.........]

final_concat (fst, snd) = 
    case fst of
        "" -> snd
        _ -> fst

infinite_output = map final_concat infinite_cycle1_2_3
-- ["1","2","fizz","4","buzz",.........]

main :: IO()
main = mapM_ putStrLn $ take 100 infinite_output