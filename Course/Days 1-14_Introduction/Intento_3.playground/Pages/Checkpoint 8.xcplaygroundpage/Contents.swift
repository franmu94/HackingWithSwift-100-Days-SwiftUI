//: [Previous](@previous)

protocol Building {
    var rooms: Int {get}
    var cost: Int { get }
    func printSummary()
}

extension Building {
    func printSummary(){
        print("This building has \(rooms) rooms, and costs \(cost)$. The agent reponsible is \(agentResponsible)")
    }
    var agentResponsible: String {
        cost > 300_000 ? "Neo" : "Agente Smith"
    }
}


struct House: Building{
    let rooms = 4
    var cost  = 300_000
}

var micasa = House()
micasa.printSummary()

struct Office: Building {
    let rooms: Int
    var cost: Int {
        get {
            rooms * 75_000
        }

    }
}

var miofi = Office(rooms: 10)
miofi.printSummary()


