
//
//  ContentView.swift
//  ViewsAndModif
//
//  Created by Fran Malo on 16/2/24.
//

import SwiftUI

struct ContentView: View {
    struct CapsuleText: View {
        var text: String

        var body: some View {
            Text(text)
                .font(.largeTitle)
                .padding()
                .background(.blue)
                .clipShape(.capsule)
        }
    }
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)

            CapsuleText(text: "Second")
                .foregroundStyle(.red)

        }
    }
    
}

#Preview {
    ContentView()
}
