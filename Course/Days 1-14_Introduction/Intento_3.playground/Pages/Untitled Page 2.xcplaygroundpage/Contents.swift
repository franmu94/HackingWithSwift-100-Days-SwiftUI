//: [Previous](@previous)

import Foundation

protocol Building {
    var rooms: Int {get}
    var cost: Int { get set }
    var agentResponsible: String { get set }
    func printSummary()
}

extension Building {
    func printSummary(){
        print("This building has \(rooms) rooms, and costs \(cost) $. The agent reponsible is \(agentResponsible)")
    }
}

struct House: Building{
    let rooms = 4
    var cost  = 300_000
    var agentResponsible = "Agente Smith"
}


var micasa = House()
micasa.printSummary()
