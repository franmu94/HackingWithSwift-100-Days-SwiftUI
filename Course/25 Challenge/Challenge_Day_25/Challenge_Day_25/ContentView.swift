//
//  ContentView.swift
//  Challenge_Day_25
//
//  Created by Fran Malo on 23/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showingScore = false

    
    @State private var moves2 = [
        ("🗿",Color.black),
        ("📃",Color.white),
        ("✂️",Color.blue)
    
    ]
    @State private var life = "♥️♥️♥️"
    
    @State private var score = 0
    
    @State private var GameChose: Int = Int.random(in: 0..<3)
    
    @State private var PlayerChose: String = ""
    
    @State private var PlayerShouldWin =  Bool.random()
    
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

                VStack(spacing: 0) {
                    Spacer(minLength: 150)
                    HStack{
                        Group{
                            Text("Score: \(score)/10")
                        }
                    }

                    Text(moves2[GameChose].0)
                        .font(.system(size: 250))
                        Text("You must... \(PlayerShouldWin ? "Win" : "Lose")!")
                            .font(.largeTitle)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)

                    Spacer(minLength: 100)
                    HStack{
                        Group{
                            Text(life)
                        }
                            .frame(maxWidth: 100)
                            .padding(.vertical, 20)
                            .clipShape(.rect(cornerRadius: 20))
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)

                    }
                    HStack(spacing: 55){
                        ForEach(moves2, id: \.self.0) { a in
                            Button {
                                figureChosed(a.0)
                                PlayerShouldWin.toggle()
                                print(GameChose)
                                GameChose = Int.random(in: 0..<3)
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
                    .background(.ultraThinMaterial)
                    .clipShape(.rect(cornerRadius: 20))
                    
                    Spacer(minLength: 150)
                    
         

                }
                .padding()
            }
            .alert("game over", isPresented: $showingScore) {
                Button("Continue", action: {showingScore = true})
            } message: {
                Text(life.isEmpty ? "You lost" : "You won!")

            }
    }
    func figureChosed(_ anwser: String){
        let n1 = PlayerShouldWin ? 1 : 0
        let n0 = PlayerShouldWin ? 0 : 1
        var oldscore = score
        if anwser == "🗿" {
            if GameChose == 2 {
                score += n1
            } else {
                score += n0
            }
        } else if anwser == "📃" {
            if GameChose == 0 {
                score += n1
            } else {
                score += n0
            }
        } else if anwser == "✂️" {
            if GameChose == 1 {
                score += n1
            } else {
                score += n0
            }
        }
        if oldscore == score {
            life = String(life.dropLast())
        }
        
        if score == 10 || life.isEmpty {
            score = 0
            life = "♥️♥️♥️"
            showingScore = true
        }
    }
}

#Preview {
    ContentView()
}
