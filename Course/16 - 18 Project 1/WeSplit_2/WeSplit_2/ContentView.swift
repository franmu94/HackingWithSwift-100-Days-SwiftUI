//
//  ContentView.swift
//  WeSplit_2
//
//  Created by Fran Malo on 9/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    let tipPercentages = [10, 15, 20, 25, 0]

    
    var body: some View {
        Form{
            TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
        }
    }
}

#Preview {
    ContentView()
}
