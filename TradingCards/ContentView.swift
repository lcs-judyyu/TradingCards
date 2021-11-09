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
                .frame(width: 420, height: 900, alignment: .center)
            //clear color background
            //gray for photo and names
            Color.gray
                .frame(width: 330, height: 460, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 75)
                .padding(.bottom, 150)
            //white for photo and names
            Color.white
                .frame(width: 310, height: 440, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 75)
                .padding(.bottom, 150)
            
            //grey for data
            Color.gray.opacity(0.45)
                .frame(width: 380, height: 250, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .padding(.top, 600)
            
            //white for data
            Color.white.opacity(0.8)
                .frame(width: 370, height: 240, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .padding(.top, 600)
                
            //content
            //ice hockey text
            HStack(alignment: .top, spacing: 0) {
                Text("Ice Hockey")
                    .kerning(10)
                    .textCase(.uppercase)
                    .font(Font.custom("Saira Stencil One", size: 36))
                    .padding(.trailing, 50)
                    .multilineTextAlignment(.trailing)
                    .rotationEffect(.degrees(-90))
                    .position(x: 40, y: 300)
            }
            
            VStack(alignment: .leading, spacing: 10){
                //hockey icon
                Image("HockeyIconWhite")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topLeading)
                    .padding(.top, 20)
                HStack(alignment: .top, spacing: 10) {
                    VStack {
                        //placeholder
                        Text("Ice Hockey")
                            .textCase(.uppercase)
                            .font(Font.custom("Saira Stencil One", size: 36))
                            .opacity(0)
                    }
                    VStack {
                        //photo
                        Image("JackJohnson")
                            .resizable()
                            .frame(width: 300, height: 300, alignment: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .padding(.trailing, 11)
                            .padding(.top, 16)
                        //.opacity(0)
                        VStack {
                            //name
                            Text("John Johnson")
                                .font(Font.custom("Andale Mono", size: 36).weight(.bold))
                                .allowsTightening(true)
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
            //team logo
            VStack {
                Image("NYR")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .topTrailing)
                    .position(x: 350, y: 85)
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
