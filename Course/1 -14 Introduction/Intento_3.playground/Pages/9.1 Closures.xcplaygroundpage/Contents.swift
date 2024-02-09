//: [Previous](@previous)

import Foundation



func greetUser() {
    print("Hi there!")
}

greetUser()

var greetCopy = greetUser
greetCopy()



let sayHallo = { (name: String) -> String in
    "Hi \(name)!"
}


var greetCopy2: () -> Void = greetCopy


func getUserData(for id: Int) -> String {
    if id == 1989{
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}


var data: (Int) -> String = getUserData

let user = data(1989)

print(user)

// ----------------------------------------


let team = ["Gloria","Suzanne","Piper","Tiffany","Tasha"]
let sortedTeam = team.sorted()

print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    
    return name1 < name2
}


let captainFirstTeam = team.sorted(by: captainFirstSorted)

print(captainFirstTeam)


let captainFirstTeam2 = team.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
})


print(captainFirstTeam2)



let team2 = ["aaaa","bbbb","a","c","b"]


let TeamOrderedByLength = team2.sorted(by: {(name1: String, name2: String) -> Bool in
    if name1.count > name2.count{
        return true
    } else if name1.count < name2.count{
        return false
    }
    return false
})


print(TeamOrderedByLength)
