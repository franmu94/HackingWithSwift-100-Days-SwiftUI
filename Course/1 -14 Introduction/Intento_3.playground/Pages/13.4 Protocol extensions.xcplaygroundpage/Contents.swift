//: [Previous](@previous)

import Foundation

let guest = ["Mario","Luigi","Peach"]

if guest.isEmpty == false {
    print("Guest count: \(guest.count)")
}



extension Array {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}


if guest.isNotEmpty {
    print("Guest count \(guest.count)")
}

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person {
    let name: String
}


let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()



