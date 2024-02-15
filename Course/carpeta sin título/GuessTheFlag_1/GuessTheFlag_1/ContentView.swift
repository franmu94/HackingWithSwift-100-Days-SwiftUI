//
//  ContentView.swift
//  GuessTheFlag_1
//
//  Created by Fran Malo on 14/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
        
        //LinearGradient(colors: [.white, .black], startPoint: .bottom, endPoint:.top)
        //LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
        
        /*LinearGradient(stops:
                        [
                            
                            Gradient.Stop(color: .orange, location: 0.0),
                            Gradient.Stop(color: .white, location: 0.30),
                            Gradient.Stop(color: .white, location: 0.50),
                            Gradient.Stop(color: .yellow, location: 0.50),
                            Gradient.Stop(color: .blue, location: 0.51)
                         
                         
                        
                        
                        ],
                       startPoint: .top,
                       endPoint: .bottom)*/
        //RadialGradient(colors: [.blue, .black], center:UnitPoint(x: 0.5, y: 0.5), startRadius: 150, endRadius: 200)
        //AngularGradient(colors: [.black, .yellow, .green, .blue, .purple, .red], center: .center, startAngle: .degrees(0), endAngle: .degrees(90))
        AngularGradient(stops:
                        [
                            
                            Gradient.Stop(color: .orange, location: 0.125),// es totalmente naranja del 0 hasta el 12.5%
                            Gradient.Stop(color: .white, location: 0.25), //
                            Gradient.Stop(color: .white, location: 0.50),
                            Gradient.Stop(color: .yellow, location: 0.50),
                            Gradient.Stop(color: .blue, location: 0.60)
                         
                         
                        
                        
                        ]
                        ,center: .center)



        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
