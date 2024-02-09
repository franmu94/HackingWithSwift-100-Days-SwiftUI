//: [Previous](@previous)

import Foundation

protocol Vehicle {
    var name: String { get }
    var currentPassangers: Int { get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}


struct Car: Vehicle{
    let name = "Car"
    var currentPassangers = 1
    func estimateTime(for distance: Int) -> Int{
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance) km")
    }
    func openSunroof(){
        print("It's a nice day")
    }
}

struct Bicycle: Vehicle{
    let name = "Bicycle"
    var currentPassangers = 1
    func estimateTime(for distance: Int) -> Int{
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance) km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a diferent vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
let bike = Bicycle()


commute(distance: 100, using: car)
commute(distance: 1011, using: bike)


func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) to travel \(distance) km")
    }
}


getTravelEstimates(using: [car, bike], distance: 150)
