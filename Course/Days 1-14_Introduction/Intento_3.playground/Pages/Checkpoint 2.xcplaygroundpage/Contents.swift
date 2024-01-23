//: [Previous](@previous)

import Foundation

let arra = ["Fran","Papa","mama","Blanca","Fran"]

print(arra.count)
print(Set(arra).count)


let names = ["John", "Michael", "Terry", "Graham", "Eric", "Terry"]
var uniques = Set<String>()
print("Adding \(names[0]) to the set: \(uniques.insert(names[0]))")
print("Adding \(names[1]) to the set: \(uniques.insert(names[1]))")
print("Adding \(names[2]) to the set: \(uniques.insert(names[2]))")
print("Adding \(names[3]) to the set: \(uniques.insert(names[3]))")
print("Adding \(names[4]) to the set: \(uniques.insert(names[4]))")
print("Adding \(names[5]) to the set: \(uniques.insert(names[5]))")
