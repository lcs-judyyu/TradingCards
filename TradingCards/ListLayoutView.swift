//
//  ListLayoutView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-09.
//

import SwiftUI

struct ListLayoutView: View {
    var body: some View {
        List {
            NavigationLink(destination: TestView()){
                HStack {
                    Text("Test View")
                }
            }
        }
        .navigationTitle("Hockey Cards")
    }
}

struct ListLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListLayoutView()
        }
    }
}
