//
//  ListLayoutView.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-09.
//

import SwiftUI

struct ListLayoutView: View {
    
    //@State private var hoverActive = false
    
    var body: some View {
        
        VStack {
            
            List {
                
                Section(header: Text("Men")) {
                    
                    ForEach(ListOfPlayers) { currentPlayer in
                        
                        NavigationLink(destination: {
                            
                            DetailView(player: currentPlayer)
                            
                        }, label: {
                            
                            HStack {
                                Image(currentPlayer.photoName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50, alignment: .leading)
                                    .clipShape(Circle())
                                
                                VStack(alignment: .leading, spacing: 5) {
                                    Text(currentPlayer.playerName)
                                        .bold()
                                        .font(.title3)
                                    Text(currentPlayer.teamName)
                                        .font(.caption)
                                        .kerning(0.4)
                                }
                                .foregroundColor(Color.white)
                                
                            }
                            .padding(.vertical, 2)
                            
                        })
                            .listRowBackground(currentPlayer.rowColor)
                        //.hoverEffect(.lift)
                    }
                }
                //if .onHover {hovering in hoverActive = hovering})
            }
            
            .listStyle(.sidebar)
            .navigationTitle("Hockey Cards")
        }
    }
}

struct ListLayoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListLayoutView()
        }
    }
}
