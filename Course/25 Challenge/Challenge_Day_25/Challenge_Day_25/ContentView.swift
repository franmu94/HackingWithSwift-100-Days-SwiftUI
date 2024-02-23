//
//  ContentView.swift
//  Challenge_Day_25
//
//  Created by Fran Malo on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var moves2 = [
        ("🗿",Color.black),
        ("📃",Color.white),
        ("✂️",Color.blue)
        
    ]
    
    @State private var moves = ["🗿", "📃", "✂️"].shuffled()
    
    @State private var GameChose: Int = Int.random(in: 0..<2)
    @State private var PlayerChose: String = ""
    
    var PlayerShouldWin: Bool {
        Bool.random()
    }
    
    var body: some View {
            ZStack{
                VStack(spacing: 0){
                    Color(.yellow)
                        .frame(width: .infinity, height:300 )

                    
                    
                    HStack(spacing: 0){
                        ForEach(moves2, id: \.self.0) { a in
                            LinearGradient(colors: [.yellow, a.1], startPoint: .top, endPoint: .bottom)
                                .frame(width: .infinity, height:.infinity )

                        }
                    }

                }
                .ignoresSafeArea()

                VStack {
                    
                    Text(moves[GameChose])
                        .font(.system(size: 250))
                    Text("You must... \(PlayerShouldWin ? "Win" : "Lose")!")
                        .multilineTextAlignment(.trailing)
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Spacer()
                    Spacer()
                    HStack(spacing: 55){
                        ForEach(moves2, id: \.self.0) { a in
                            Button {
                                GameChose = Int.random(in: 0..<2)
                            } label: {
                                Text(a.0)
                                    .font(.system(size: 70))
                                    .shadow(color: Color.yellow, radius: 8)
                            }
                            .frame(width: 80, height:60 )
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 20)
                    .background(.regularMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    
                }
                .padding()
            }
    }
}

#Preview {
    ContentView()
}
