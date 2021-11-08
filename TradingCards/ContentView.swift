//
//  ContentView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //background image
            Image("HockeyCardsBackground")
                .resizable()
            //content
            VStack(alignment: .leading, spacing: 10){
                Image("HockeyIconWhite")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topLeading)
                HStack(alignment: .top, spacing: 10) {
                    Text("Ice Hockey")
                        .textCase(.uppercase)
                        .rotationEffect(.degrees(-90))
                    VStack {
                        Image("JackJohnson")
                            .resizable()
                            .frame(width: 300, height: 300, alignment: .trailing)
                        .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                        VStack {
                        Text("John Johnson")
                        Text("New York Rangers")
                        }
                        .padding(.bottom, 90)
                    }
                }
                Text("Data")
                    .padding(.top, 50)
                    .padding(.bottom, 130)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
