//: [Previous](@previous)

import Foundation

let age = 16

if age >= 18{
    print("You can vote in the next election")

}else{
    print("Sorry, you're too youn to vote.")
}



let a = false
let b = true

if a {
    print("Code to run if a is true")
} else if b {
    print("Code to run if a is but b is true")
} else {
        print("Code to run if both a and b are false")
}


let temp = 25

if temp > 20 && temp < 30{
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent = true


if userAge >= 18 || hasParentalConsent{
    print("You can buy the game")
}

enum TransportationOption{
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportationOption.airplane

if transport == .airplane || transport == .helicopter{
    print("Let's fly")
} else if transport == .bicycle{
    print("I hope there is a bike path...")
} else if transport == .car{
    print("Time to get stuck on traffic.")
} else {
    print("I'm going to hire a scooter now")
}


if 2.0 >= 2 {
    print("Vale")
}
