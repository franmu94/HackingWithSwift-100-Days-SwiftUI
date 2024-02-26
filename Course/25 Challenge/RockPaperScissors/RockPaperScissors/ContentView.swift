//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Fran Malo on 26/2/24.
//

import SwiftUI

struct ContentView: View {
    let moves = ["✊", "✋", "✌️"]
    
    @State private var computerChoice = Int.random(in: 0..<3)
    @State private var shouldWin = Bool.random()
    
    @State private var score = 0
    @State private var questionCount = 1
    @State private var showinfresults = false
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("Computer has played...")
                .font(.headline)
            Text(moves[computerChoice])
                .font(.system(size: 200))
            
            if shouldWin {
                Text("Which one wins?")
                    .foregroundStyle(.green)
                    .font(.title)
            } else {
                Text("Which one loses?")
                    .foregroundStyle(.red)
                    .font(.title)
            }
            
            HStack {
                ForEach(0..<3) { number in
                    Button(moves[number]) {            
                        play(choice: number)
                    }
                    .font(.system(size: 80))
                }
            }
            Spacer()
            Text("Score: \(score)")
                .font(.subheadline)
            Spacer()
            
        }
        .alert("Game over", isPresented: $showinfresults){
            Button("play again", action: reset)
        } message: {
            Text("Your Score was \(score)")
        }
    }
    func play(choice: Int) {
        let winningMoves = [1,2,0]
        let didwin: Bool
        
        if shouldWin {
            didwin = choice == winningMoves[computerChoice]
        } else {
            didwin = winningMoves[choice] == computerChoice
        }
        
        score += didwin ? 1 : -1
        
        if questionCount == 10 {
            showinfresults = true
        } else {
            computerChoice = Int.random(in: 0..<3)
            shouldWin.toggle()
            questionCount += 1
        }
        
    }
    func reset() {
        computerChoice = Int.random(in: 0..<3)
        shouldWin = Bool.random()
        questionCount = 0
        score = 0
    }
}

#Preview {
    ContentView()
}
