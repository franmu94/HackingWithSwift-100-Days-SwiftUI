//
//  ContentView.swift
//  Challege_day19_paulSolution
//
//  Created by Fran Malo on 14/2/24.
//

import SwiftUI

struct ContentView: View {
    let conversions = ["Distance", "Mass", "Temperature", "Time"]
    let unitTypes = [
        [UnitLength.meters, UnitLength.kilometers, UnitLength.feet, UnitLength.yards, UnitLength.miles],
        [UnitMass.grams, UnitMass.kilograms, UnitMass.ounces, UnitMass.pounds],
        [UnitTemperature.celsius, UnitTemperature.fahrenheit, UnitTemperature.kelvin],
        [UnitDuration.hours, UnitDuration.minutes, UnitDuration.seconds]
    ]
    @State private var selectedUnits = 0

    @State private var input = 100.0
    @State private var inputUnit: Dimension = UnitLength.meters
    @State private var outputUnit: Dimension = UnitLength.yards
    
    
    
    @FocusState private var inputIsFocused: Bool
    
    
    let formatter: MeasurementFormatter
    init() {
        formatter = MeasurementFormatter()
        formatter.unitOptions = .providedUnit
    }
    
    var result: String {
        let inputMeasurement = Measurement(value: input, unit: inputUnit)
        let outputMeasurement = inputMeasurement.converted(to: outputUnit)
        return formatter.string(from: outputMeasurement)
    }

    var body: some View {
        NavigationStack {
            Form {
                Picker("Conversion", selection: $selectedUnits) {
                    ForEach(0..<conversions.count, id: \.self) {
                        Text(conversions[$0])
                    }
                }
                Section("Result") {
                    Text(selectedUnits.formatted())
                }
                
                Section("Amount to convert") {
                    TextField("Amount", value: $input, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                }

                
                Picker("Convert from", selection: $inputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from: $0))
                    }
                }

                Picker("Convert to", selection: $outputUnit) {
                    ForEach(unitTypes[selectedUnits], id: \.self) {
                        Text(formatter.string(from: $0))
                    }
                }

                Section("Result") {
                    Text(result)
                }
            }
            .navigationTitle("Converter")
            .toolbar {
                if inputIsFocused {
                    Button("Done") {
                        inputIsFocused.toggle()
                    }
                }
            }
            .onChange(of: selectedUnits) {
                let units = unitTypes[selectedUnits]
                inputUnit = units[0]
                outputUnit = units[1]
            }
        }
    }
}

#Preview {
    ContentView()
}
