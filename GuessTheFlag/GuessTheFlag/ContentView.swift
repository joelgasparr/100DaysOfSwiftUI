//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Joel Gaspar on 09/12/20.
//

import SwiftUI

struct ContentView: View {
   @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria","Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = ""
    
    var body: some View {
        ZStack{
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.75, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
            
            
        VStack(spacing: 15) {
            VStack {
                Text("Tap the flag of")
                    .foregroundStyle(.secondary)
                    .font(.subheadline.weight(.heavy))
                Text(countries[correctAnswer])
                    .font(.largeTitle.weight(.semibold))
        }
    
        ForEach(0 ..< 3) { number in
            Button {
                flagTapped(number)
            } label: {
                Image(countries[number])
                    .renderingMode(.original)
                    .clipShape(Capsule())
                    .shadow(radius: 5)
               }
           }
            
    
        .alert(isPresented: $showingScore) {
            Alert(title: Text(scoreTitle), message: Text("Your score is ???"), dismissButton: .default(Text("Continue"))  {
                self.askQuestion()
                })
            
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
         
            Text("Score: ????")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
        }
}
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }
        showingScore = true
    }
    
    func askQuestion(){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
