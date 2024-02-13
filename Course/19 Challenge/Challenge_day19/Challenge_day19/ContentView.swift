//
//  ContentView.swift
//  Challenge_day19
//
//  Created by Fran Malo on 13/2/24.
//

import SwiftUI

struct ContentView: View {
    let timeUnit = ["Seconds","Minutes","Hours","Days"]
    @State var imputUnit = ""
    @State var outputUnit = ""
    @State var imputValue = 0.0
    var outputValue: Double {
        3.3
    }

    var body: some View {
        NavigationStack{
            Form {
                Section("elige el unidad de origen"){
                    Picker("",selection: $imputUnit) {
                        ForEach(timeUnit, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                Section("elige el unidad objetivo"){
                    Picker("",selection: $outputUnit) {
                        ForEach(timeUnit, id: \.self) {
                            Text($0)
                        }
                    }.pickerStyle(.segmented)
                }
                Section (imputUnit != "" ? "Introduce \(imputUnit):" : ""){
                    //TextField("Amount", value: $imputValue, formatter: NumberFormatter.number)
                    TextField("", value: $imputValue, formatter: NumberFormatter())
                }
                Section ("\(outputUnit)"){
                    Text(outputValue, format: .number)
                }
                
            }.navigationTitle("Conversor")
        }
        
    }
}

#Preview {
    ContentView()
}
