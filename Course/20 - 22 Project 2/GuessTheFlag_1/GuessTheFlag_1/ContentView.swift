//
//  ContentView.swift
//  GuessTheFlag_1
//
//  Created by Fran Malo on 15/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false

    var body: some View {
        
        Button("Show alert") {
            showingAlert = true
        }
        .alert("Important message", isPresented: $showingAlert, 
               actions: {
            
            VStack{
                Button("Delete", role: .destructive) { }
                Button("muCancel", role: .cancel) { }
            }
            
        },
               message: {Text("Please read the important message")})

    }
}

#Preview {
    ContentView()
}
