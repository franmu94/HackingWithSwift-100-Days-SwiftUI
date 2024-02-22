//
//  ContentView.swift
//  GuessTheFlag_2
//
//  Created by Fran Malo on 15/2/24.
//

import SwiftUI


struct FlagImage: View {
    var name: String
    
    var body: some View {
        Image(name)
            .clipShape(.capsule)
            .shadow(color: Color.yellow, radius: 5)
    }
}

struct ContentView: View {
    @State private var showingScore = false
    @State private var scoreTitle = ""
    


    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    

    @State private var score = 0
    @State private var chosenNumber = 0
    @State private var cont = 0

    


    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3),
            ], center: .top, startRadius: 200, endRadius: 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Spacer()

                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
                Spacer()

                VStack (spacing: 15){
                    VStack {
                        
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flagTapped(number)
                            askQuestion()
                        } label: {
                            FlagImage(name: countries[number])
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(.rect(cornerRadius: 20))
                
                
                Text("Score: \(score) / \(cont)")
                    .foregroundStyle(.white)
                    .font(.title.bold())
                Spacer()
            }
        }
        
        
        

        
        
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text( (scoreTitle == "Correct" ? "Your score is \(score)" : "Wrong! That’s the flag of \(countries[chosenNumber])") +
                 
                 ", \n you reach \(score) \n \(cont == 7 ? "Your scire is  \(score)/8":"\(cont)")" )
            
            
        }
    }

    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            score += 1
        } else {
            scoreTitle = "Wrong"
            
        }
        if cont == 8 {
            cont = 0
            score = 0
        
        }
        
        chosenNumber = number
        
        cont +=  1
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        /*if scoreTitle == "Wrong" {
            score = 0
        }*/
        if cont == 8 {
            showingScore = true
            cont = 0
            score = 0
        }

        
    }
}

#Preview {
    ContentView()
}
