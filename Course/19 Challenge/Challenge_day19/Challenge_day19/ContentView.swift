//
//  ContentView.swift
//  Challenge_day19
//
//  Created by Fran Malo on 13/2/24.
//

import SwiftUI

struct ContentView: View {
    let magnitudes = [ "Temperature", "Length", "Time", "Volume"]
    @State var chosenMagnitude: String = ""
    var timeUnit: [String] {
        var result =
        switch chosenMagnitude {
        case "Temperature": ["Celsius", "Fahrenheit", "Kelvin"]
        case "Length": ["meters", "kilometers", "feet", "yards", "miles"]
        case "Time": ["Seconds","Minutes","Hours","Days"]
        case "Volume": ["milliliters", "liters", "cups", "pints", "gallons"]
        default: [String]()
        }
            return result
        }
    @State var imputUnit = ""
    @State var outputUnit = ""
    @State var imputValue = 0.0
    @State var outputValue = 0.0

    var calculateValue: Double {
        func toSeconds (unit: String, toUnit: Bool = false) -> Double {
            let result = switch unit {
            case "Seconds":
                1.00
            case "Minutes":
                60.0
            case "Hours":
                3600.0
            case "Days":
                3600.0 * 24.0
            default:
                0.0
            }
            return toUnit ? 1/result : result
        }
        
        
        return imputValue * toSeconds(unit: imputUnit) * toSeconds(unit: outputUnit, toUnit: true)
    }

    var body: some View {
        NavigationStack{
            Form {
                Section {
                    Picker("Chose a magnitude", selection: $chosenMagnitude){
                        ForEach(magnitudes, id: \.self) {
                            Text($0)
                        }
                    }
                }
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
                        .keyboardType(.decimalPad)
                }
                Button("Calculate"){
                    outputValue = calculateValue
                }
                    
                Section ("\(outputUnit)"){
                    Text(outputValue.formatted())
                }
                
            }
            .navigationTitle("Conversor")
        }
        
    }
}

#Preview {
    ContentView()
}
