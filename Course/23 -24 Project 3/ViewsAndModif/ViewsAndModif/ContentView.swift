
//
//  ContentView.swift
//  ViewsAndModif
//
//  Created by Fran Malo on 16/2/24.
//

import SwiftUI
struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}



struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ZStack(alignment: .bottomTrailing) {
                
                Color.blue
                    .frame(width: 300, height: 200)
                Text("Hacking with Swift")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .padding(5)
                    .background(.black)
            }
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "HWS")
            
            Text("provddddddddddddd\n")
                .watermarked(with: "eee")
        }
        .watermarked(with: "jajajja")
    }
    
}

#Preview {
    ContentView()
}
