import Foundation


class Employee {
    let hours: Int
    
    init(hours: Int){
        self.hours = hours
    }
    func printSummary() {
        print("I work for \(hours) hours a day.")
    }
}

class Developer: Employee {
    func work(){
        print("I'm writing code for \(hours) hours.")
    }
    override func printSummary() {
        print("I'm a developer who willl sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee{
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}


let robert = Developer(hours: 8)
let joseph = Manager(hours: 10)

robert.work()
joseph.work()

let novall = Developer(hours: 8)
novall.printSummary()


