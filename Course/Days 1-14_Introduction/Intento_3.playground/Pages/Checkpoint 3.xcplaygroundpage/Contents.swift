//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")        
    } else if i.isMultiple(of: 3){
        print("Fizz")
    } else if i.isMultiple(of: 5){
        print("Buzz")
    } else {
        print("\(i)")
    }
}

var str = ""
for i in 1...100 {
    str += i.isMultiple(of: 3) ? "Fizz" : ""
    str += i.isMultiple(of: 5) ? "Buzz" : ""
    str += str.count == 0 ? "\(i)" : ""
    print(str)
    str = ""
    
}

for i in 1...100 {
    str = str + (i.isMultiple(of: 3) ? "Fizz" : "") + (i.isMultiple(of: 5) ? "Buzz" : "") + (str.count == 0 ? "\(i)" : "")
    print(str)
    str = ""
    
}
