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
                .scaledToFit()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
