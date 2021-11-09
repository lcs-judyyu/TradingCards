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
                .padding(.bottom, 170)
            //white for photo and names
            Color.white
                .frame(width: 310, height: 440, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 75)
                .padding(.bottom, 170)
            
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
                            .padding(.top, 6)
                        VStack {
                            //name
                            Text("John Johnson")
                                .font(Font.custom("Andale Mono", size: 36).weight(.bold))
                                .allowsTightening(true)
                            //team name
                            Text("New York Rangers")
                                .font(Font.custom("Avenir Next", size: 20).weight(.regular))
                        }
                        .padding(.bottom, 90)
       
                        .frame(width: 280, height: 200, alignment: .center)
                    }
                    .padding(10)
                }
                //placeholder
                    HStack {
                        Text("Data")
                            .padding(.init(top: 50, leading: 35, bottom: 150, trailing: 75))
                            .opacity(0)
                    }
            }
            
            //data section
            VStack {
                Spacer()
                
                HStack {
                    Text("""
Age: 34
Number: 3
Born: United States
Pos: LD
""")
                        .frame(width: 160, height: 200, alignment: .topLeading)
                    .padding(.bottom, 55)
                    
                    Text("""
Proj. WAR %: 2%
EV Off: 3%
PK: 6%
QoC: 52%
Finishing: 27%
""")
                        .frame(width: 160, height: 200, alignment: .topLeading)
                    .padding(.bottom, 55)
                }
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
