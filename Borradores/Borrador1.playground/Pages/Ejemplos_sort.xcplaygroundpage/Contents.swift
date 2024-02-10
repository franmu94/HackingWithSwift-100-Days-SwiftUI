//: [Previous](@previous)

import Foundation


var arr = [5,8,1,0,3,9,7,2,4,6]


print(arr)

var myArraySorted_2 = arr.sorted { (a, b) -> Bool in

    print("\(b) y \(a):")
    if a % 2 == 1 && b % 2 == 0 {
        print("Se pondra \(a) por delante de \(b)")
        return true
    }
    else if a % 2 == 0 && b % 2 != 0 {
        print("Se dejara \(b) por delante de \(a)")
        return false
        }
    else {
        print("los dos son iguales, asi que se pondre el menor delante")
        return a < b
    }
    
    
}

print(myArraySorted_2)


