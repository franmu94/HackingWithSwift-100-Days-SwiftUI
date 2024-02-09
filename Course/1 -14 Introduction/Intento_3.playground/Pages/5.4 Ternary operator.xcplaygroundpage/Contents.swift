//: [Previous](@previous)

import Foundation

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

let hour = 23
print(hour < 12 ? " it before noon" : "it's after noon")



enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)
