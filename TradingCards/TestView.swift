//
//  TestView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-08.
//

import SwiftUI

struct Header: View {
    var body: some View {
        Image("JackJohnson")
            .resizable()
            .scaledToFit()
            .frame(width: 500, height: 200, alignment: .top)
            .overlay(Text("Hockey")
                        .font(Font.system(size: 120, design: Font.Design.serif))
                        .foregroundColor(.green))
    }
}

struct TestView: View {
    
    var body: some View {
        ZStack {
            //background image
            Image("HockeyCardsBackground")
                .resizable()
                .opacity(0)
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
            //grey for data
            Color.gray.opacity(0.45)
                .frame(width: 380, height: 250, alignment: .bottomLeading)
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .padding(.top, 600)
            
            //white for data
            Color.white.opacity(0.8)
                .frame(width: 370, height: 240, alignment: .bottomLeading)
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
                    //.background()
                }
                HStack {
                    Text("Data")
                        .padding(.init(top: 50, leading: 35, bottom: 150, trailing: 75))
                        .opacity(0)
                }
            }
            VStack {
                Spacer()
                Text("Data")
                    .frame(width: 340, height: 200, alignment: .top)
                    .padding(.bottom, 50)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Header()
            TestView()
        }
    }
}
