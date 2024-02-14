//
//  ContentView.swift
//  GuessTheFlag_1
//
//  Created by Fran Malo on 14/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            ZStack {
                VStack{
                    Color.red
                    Spacer(minLength: 0)
                    Color.blue
                }
                
                Text("Your content")
                    .foregroundStyle(.secondary)

            }
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
