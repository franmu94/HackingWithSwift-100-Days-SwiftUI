//
//  ContentView.swift
//  WeSplit
//
//  Created by Fran Malo on 8/2/24.
//

import SwiftUI

struct ContentView: View {
        
    @State private var name = "name"
    @State private var tapCount = 0
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = ""

    var body: some View {
        NavigationStack{
            
            Form {
                TextField("Enter your name", text: $name)
                Text("Hello, \(name)")
                
                Section (header: Text("Otra seccion").textCase(nil)){
                    Text("Hello, world!")
                    Text("Hello, world!")

                }
                Button("Tap Count: \(tapCount)") {
                    self.tapCount += 1
                }
                
                Section (header: Text("Seccion Picker, con ForEach dentro del Picker").textCase(nil)){
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(students, id: \.self) {Text($0)}
                    }
                }
                Section (header: Text("Seccion ForEach, con ForEach dentro del Form").textCase(nil), footer: Text("end of section")){
                    ForEach(0 ..< 4) {
                        Text("Row \($0)")
                    }
                }
                
                
                
                
            }.navigationTitle("SwiftUI")
        }
    }
}






#Preview {
    ContentView()
}
