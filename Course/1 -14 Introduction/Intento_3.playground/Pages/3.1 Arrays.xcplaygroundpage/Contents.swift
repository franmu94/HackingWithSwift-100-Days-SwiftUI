//: [Previous](@previous)

import Foundation

var beatles = ["John","Paul","George","Ringo"]
let numbers = [4,8,15,16,23,42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])
print(numbers[1])
print(temperatures[2])

beatles.append("Allen")
beatles.append("Adrian")

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")


print(albums.count)

beatles.remove(at: 2)
beatles.remove(at: 2)
beatles.remove(at: 2)
beatles.remove(at: 2)

print(beatles)
beatles.removeAll(keepingCapacity: false)
print(beatles)


let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())


let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

print(type(of: reversedPresidents))


var a = type(of: "a")

print(type(of: a))
