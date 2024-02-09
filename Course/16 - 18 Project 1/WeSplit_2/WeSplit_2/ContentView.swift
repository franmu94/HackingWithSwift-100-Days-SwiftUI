//
//  ContentView.swift
//  WeSplit_2
//
//  Created by Fran Malo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    let localCurrency = Locale.current.currency?.identifier ?? "USD"
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleCount = Double(numberOfPeople + 2)
        let tipSelection = Double(tipPercentage)
        
        let tipValue = checkAmount / 100 * tipSelection
        let grandTotal = tipValue + checkAmount
        
        let amountPerPerson = grandTotal / peopleCount
        
        return amountPerPerson
    }
    var gradTotal2: Double {
        checkAmount * (1 + Double(tipPercentage) / 100)
    }

    
    var body: some View {
        NavigationStack{
            Form{
                Section{
                    TextField("Amount", value: $checkAmount, format: .currency(code: localCurrency))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople) {
                        ForEach(2..<20) {
                            Text("\($0) people" )
                        }
                    }.pickerStyle(.navigationLink)
                }
                Section("How much tip do you want to leave?"){
                    //Text("How much tip do you want to leave?")
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self){
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.segmented)
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101){
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink)
                    
                    
                }
                Section("Total"){
                    Text(gradTotal2, format:  .currency(code:localCurrency))
                }
                Section("Amount per person:"){
                    Text(totalPerPerson, format:  .currency(code:localCurrency))
                }
                
                
                

                
            }.navigationTitle("WeSplit")
        }
            
    }
}

#Preview {
    ContentView()
}
