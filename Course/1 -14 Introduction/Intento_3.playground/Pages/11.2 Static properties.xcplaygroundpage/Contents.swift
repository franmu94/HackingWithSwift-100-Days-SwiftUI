//: [Previous](@previous)

import Foundation

struct School {
    static var studentCount = 0
    static func add(student: String) {
        print("\(student) join de school.")
        studentCount += 1
    }
    
}

School.add(student: "Taylor Swift")
print(School.studentCount)

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFilename = "settings.json"
    static let homeURL = "https://www.hackingwithswift.com"
}


