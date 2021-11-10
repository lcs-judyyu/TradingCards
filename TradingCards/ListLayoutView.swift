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
                    Image("JackJohnson")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .leading)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Jack Johnson")
                            .bold()
                            .font(.headline)
                        Text("New York Rangers")
                            .font(.caption)
                    }
                }
                .padding(.vertical, 2)
            }
            //.listRowBackground(Color.blue.opacity(0.4))
            .listRowSeparatorTint(.blue)
            
            
            NavigationLink(destination: TestView()){
                HStack {
                    Image("JackJohnson")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .leading)
                        .clipShape(Circle())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Jack Johnson")
                            .bold()
                            .font(.title3)
                        Text("New York Rangers")
                            .font(.caption)
                    }
                }
                .padding(.vertical, 2)
            }
            //.listRowBackground(Color.red.opacity(0.4))
            .listRowSeparatorTint(.gray)
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
