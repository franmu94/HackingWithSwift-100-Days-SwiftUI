
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
        VStack{
            Text("Gryffindor")
                .blur(radius: 5)
            Text("Hufflepuf")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 0)
    }
    
}

#Preview {
    ContentView()
}
