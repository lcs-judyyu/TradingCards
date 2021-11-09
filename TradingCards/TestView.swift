//
//  TestView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-08.
//

import SwiftUI

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
            }
        .edgesIgnoringSafeArea(.all)
    }
    }


struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}

HStack {
    Text("Data")
        .frame(width: 300, height: 200, alignment: .topLeading)
        .padding(.leading, 50)
        .padding(.bottom, 10)
        //.padding(.init(top: 10, leading: 35, bottom: 10, trailing: 35))
    //.position(x: 80, y: 50)
