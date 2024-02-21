
//
//  ContentView.swift
//  ViewsAndModif
//
//  Created by Fran Malo on 16/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Hello World") {
            print(type(of: self.body))
        }
        .frame(width: 200, height: 200)
        .background(.red)
    }
}

#Preview {
    ContentView()
}
