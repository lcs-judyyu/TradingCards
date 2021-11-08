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
            VStack(alignment: .leading){
                Image("HockeyIconWhite")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topLeading)
                HStack(alignment: .top, spacing: 10) {
                    Text("Ice Hockey")
                        .textCase(.uppercase)
                        .rotationEffect(.degrees(-90))
                    Image("JackJohnson")
                        .resizable()
                        .frame(width: 300, height: 300, alignment: .trailing)
                }
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
