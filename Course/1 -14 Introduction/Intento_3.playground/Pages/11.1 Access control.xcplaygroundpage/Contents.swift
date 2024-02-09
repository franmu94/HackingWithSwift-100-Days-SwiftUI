import Foundation

struct BankAccount {
    private var funds = 0
    
    mutating func deposit (amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds >= amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 100)
let success = account.withdraw(amount: 100)

if success {
    print("Withdraw  money successfully")
} else {
    print("Failed to get the money")
}







struct Doctor {
    var name: String
    var location: String
    private var currentPatient = "No one"
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")


