//: [Previous](@previous)

import Foundation

let team = ["Tiffany", "Suzanne", "Piper", "Gloria", "Tasha"]

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }

    return name1 < name2
})


let captainFirstTeam2 = team.sorted { name1, name2 in
    if name1 == "Suzanne"{
        return true
    } else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}


print(captainFirstTeam2)


let captainFirstTeam3 = team.sorted{
    if $0 == "Suzanne"{
        return true
    } else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
}


let reverseTeam = team.sorted { $0 > $1 }


// mas ejemplos de closures

let tOnly = team.filter { $0.hasPrefix("T") }

print(tOnly)


let uppercasedTeam = team.map { $0.uppercased() }


print(uppercasedTeam)
