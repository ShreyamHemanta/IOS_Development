//
//  ContentView.swift
//  Demo
//
//  Created by shreyam hemanta on 15/05/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()

            VStack {
                Image("Guitar")
                    .resizable()
                    .cornerRadius(10)
                    .aspectRatio(contentMode: .fit)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Text("Guitar")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
