//
//  ContentView.swift
//  ViiewsChallege
//
//  Created by Fran Malo on 22/2/24.
//

import SwiftUI

struct TitleBlue: ViewModifier {
    var texto: String
    func body(content: Content) -> some View {
        VStack(spacing: 0) {
            Text(texto)
                .foregroundColor(.blue)
                .font(.largeTitle)
                .bold()
            
            content
        }
        }
    }
        

extension View {
    func titleBlue(title text: String) -> some View {
        modifier(TitleBlue(texto: text))
    }
}


struct ContentView: View {
    var body: some View {
        VStack {
            Color.yellow
                .frame(width: 200, height: 300, alignment: .bottomTrailing)
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .titleBlue(title: "Titulo Challenge")
    }
}

#Preview {
    ContentView()
}
