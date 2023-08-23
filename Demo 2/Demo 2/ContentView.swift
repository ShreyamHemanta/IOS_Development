//
//  ContentView.swift
//  Demo 2
//
//  Created by shreyam hemanta on 15/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(.systemPink)
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20.0) {
                Image("purple scenery")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(15)
                HStack {
                    Text("Scenery")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.leadinghalf.filled")
                        }
                        .foregroundColor(.orange)
                        
                        Text("Reviews 551")
                            .foregroundColor(Color.gray)
                    }
                    
                    .font(.caption)
                    
                    
                }
            
                Text("A perfect representation of Pure Peace")
                    .foregroundColor(Color.black)
                
                HStack {
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundColor(.gray)
                .font(.caption)
            }
            .padding()
            .background(Rectangle()
                .foregroundColor(.white)
                .cornerRadius(15)
                .shadow(radius: 15))
            .padding()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
