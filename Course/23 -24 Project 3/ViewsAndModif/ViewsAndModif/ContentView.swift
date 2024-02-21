
//
//  ContentView.swift
//  ViewsAndModif
//
//  Created by Fran Malo on 16/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        Button("Hello world"){
            useRedText.toggle()
        }
        .foregroundStyle(useRedText ? .red : .blue)
        
    }
    
}

#Preview {
    ContentView()
}
