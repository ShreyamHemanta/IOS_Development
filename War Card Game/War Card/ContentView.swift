//
//  ContentView.swift
//  War Card Game
//
//  Created by shreyam hemanta on 16/05/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
               Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                
                
                HStack {
                    
                    Spacer()
                    VStack {
                    
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                       
                    }
                    Spacer()
                    
                    VStack {
                        
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
        
        .ignoresSafeArea()
        
    }
    
    func deal() {
        // Randomize the player card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the cpu card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        //update score
        if playerCardValue > cpuCardValue {
            //add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            //add 1 to cpu score
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
