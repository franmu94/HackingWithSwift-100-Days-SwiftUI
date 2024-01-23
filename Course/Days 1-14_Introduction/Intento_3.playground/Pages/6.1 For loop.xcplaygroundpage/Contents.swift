//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

for character in greeting{
    print(character)
}

let platforms = ["iOS","macOS","tvOS","watchOS"]

for os in platforms{
    print("Swift works great on \(os).")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}


for i in 1...12{
    print("The \(i) times table: ")
    
    for j in 1...12{
        print("\(i) x \(j) is \(i*j)")
    }
    print()
}

//one through five
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

//one up to five
for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}


