module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = 
    case planet of
        Mercury -> (1/0.2408467) * (seconds / 31557600)
        Venus -> (1/0.61519726) * (seconds / 31557600)
        Earth -> (seconds/ 31557600)
        Mars -> (1/1.8808158) * (seconds / 31557600)
        Jupiter -> (1/11.862615) * (seconds / 31557600)
        Saturn -> (1/29.447498) * (seconds / 31557600)
        Uranus -> (1/84.016846) * (seconds / 31557600)
        Neptune -> (1/164.79132) * (seconds / 31557600)