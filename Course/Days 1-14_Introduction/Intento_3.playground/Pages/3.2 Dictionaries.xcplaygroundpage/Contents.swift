//: [Previous](@previous)

import Foundation

let employee2 = ["name": "Taylor Swift", "job": "Singer", "location": "Nashville"]


print(employee2["name"])


print(employee2["job", default: "Unknown"])


let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]


let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "unkown"])


var heights = [String: Int]()


heights["yao ming"] = 229



print(heights["yao ming"])
