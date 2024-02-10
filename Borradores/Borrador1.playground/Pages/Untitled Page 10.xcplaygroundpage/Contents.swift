//: [Previous](@previous)

import Foundation

var a: Int? = nil

q: do{
    guard let a else{
        a = 2
        print(a!)
        break q
    }
    
    print("\(a)")
}




