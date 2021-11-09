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
            //team logo
            Image("NYR")
                .resizable()
                .frame(width: 100, height: 100, alignment: .topTrailing)
                .position(x: 350, y: 120)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
