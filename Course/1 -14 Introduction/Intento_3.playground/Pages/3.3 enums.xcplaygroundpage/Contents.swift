//: [Previous](@previous)

import Foundation

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thurdsday
    case friday
    case e3e
}


var day = Weekday.monday
day = Weekday.tuesday


print(type(of: day))

day = .wednesday

print(day)



enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)
