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
            //clear color background
            //gray
            Color.gray
                .frame(width: 330, height: 500, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 75)
                .padding(.bottom, 100)
            //white
            Color.white
                .frame(width: 310, height: 480, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 75)
                .padding(.bottom, 100)
            //content
            //ice hockey text
            HStack(alignment: .top, spacing: 0) {
                Text("Ice Hockey")
                    .textCase(.uppercase)
                    .font(Font.custom("Saira Stencil One", size: 36))
                    .padding(.trailing, 50)
                    .multilineTextAlignment(.trailing)
                    .position()
                //.frame(width: 50, height: 300, alignment: .topLeading)
                .rotationEffect(.degrees(-90))
            }
            VStack(alignment: .leading, spacing: 10){
                //hockey icon
                Image("HockeyIconWhite")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topLeading)
                HStack(alignment: .top, spacing: 10) {
                    VStack {
                        //placeholder
                        Text("Ice Hockey")
                            .textCase(.uppercase)
                            .font(Font.custom("Saira Stencil One", size: 36))
                            .opacity(0)
                            .multilineTextAlignment(.trailing)
                            .rotationEffect(.degrees(-90))
                    }
                    VStack {
                        //photo
                        Image("JackJohnson")
                            .resizable()
                            .frame(width: 300, height: 300, alignment: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                            //.opacity(0)
                        VStack {
                            //name
                            Text("John Johnson")
                            //team name
                            Text("New York Rangers")
                        }
                        .padding(.bottom, 90)
                    }
                    .padding(10)
                    //.background()
                }
                Text("Data")
                    .padding(.top, 50)
                    .padding(.bottom, 140)
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
