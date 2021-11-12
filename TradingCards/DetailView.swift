//
//  ContentView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-06.
//

import SwiftUI

struct DetailView: View {
    
    //Stored Properties
    let player: PlayerCard
    
    var body: some View {
        ZStack {
            //background image
            Image(player.backgroundImage)
                .resizable()
                .frame(width: 420, height: 900, alignment: .center)
                .edgesIgnoringSafeArea(.all)
            
            //clear color background
            //gray for photo and names
            Color.gray.opacity(0.55)
                .frame(width: 320, height: 458, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 65)
                .padding(.bottom, 170)
            
            //white for photo and names
            Color.white.opacity(0.85)
                .frame(width: 310, height: 448, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.leading, 65)
                .padding(.bottom, 170)
            
            //grey for data
            Color.gray.opacity(0.45)
                .frame(width: 380, height: 220, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.top, 540)
            
            //white for data
            Color.white.opacity(0.8)
                .frame(width: 370, height: 210, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                .padding(.top, 540)
            
            //content
            //ice hockey text
            HStack(alignment: .top, spacing: 0) {
                Text("Ice Hockey")
                    .kerning(5)
                    .textCase(.uppercase)
                    .font(Font.custom("Saira Stencil One", size: 50))
                    .padding(.trailing, 20)
                    .multilineTextAlignment(.trailing)
                    .rotationEffect(.degrees(-90))
                    .position(x: 40, y: 340)
            }
            
            VStack(alignment: .leading, spacing: -3){
                
                //hockey icon
                Image("HockeyIconWhite")
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .topLeading)
                    .padding(.top, 2)
                    .padding(.leading, 10)
                
                HStack(alignment: .top, spacing: 7) {
                    VStack {
                        //placeholder
                        Text("Ice Hockey")
                            .textCase(.uppercase)
                            .font(Font.custom("SairaStencilOne", size: 36))
                            .opacity(0)
                    }
                    VStack {
                        //photo
                        Image(player.photoName)
                            .resizable()
                            .frame(width: 300, height: 300, alignment: .center)
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                            .padding(.trailing, 17)
                            .padding(.top, 1)
                        
                        VStack {
                            //name
                            Text(player.playerName)
                                .font(Font.custom("Andale Mono", size: 27).weight(.black))
                                .bold()
                                .textCase(.uppercase)
                                .allowsTightening(true)
                            
                            Divider().frame(width: 130, height: 2, alignment: .center).background(Color.gray)
                            
                            //team name
                            Text(player.teamName)
                                .kerning(1)
                                .font(Font.custom("Avenir Next", size: 20).weight(.regular))
                                .padding(.top, 5)
                                .padding(.bottom, 10)
                            
                        }
                        .frame(width: 280, height: 130, alignment: .center)
                        .padding(.trailing, 20)
                    }
                    .padding(10)
                }
                //placeholder
                HStack {
                    Text("Data")
                        .padding(.init(top: 150, leading: 5, bottom: 110, trailing: 5))
                        .opacity(0)
                }
            }
            
            //data section
            VStack {
                Spacer()
                
                HStack {
                    Text(player.firstColumnOfData)
                        .lineSpacing(6.0)
                        .frame(width: 160, height: 200, alignment: .topLeading)
                        .padding(.bottom, 65)
                    
                    Text(player.secondColumnOfData)
                        .lineSpacing(6.0)
                        .frame(width: 160, height: 200, alignment: .topLeading)
                        .padding(.bottom, 65)
                }
                .font(Font.custom("Avenir Next", size: 20).weight(.medium))
            }
            
            //team logo
            VStack {
                Image(player.teamLogo)
                    .resizable()
                    .frame(width: 110, height: 110, alignment: .topTrailing)
                    .position(x: 350, y: 80)
            }
        }
        .edgesIgnoringSafeArea([.bottom])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView(player: ListOfPlayers.first!)
        }
    }
}
