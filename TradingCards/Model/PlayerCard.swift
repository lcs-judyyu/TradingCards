//
//  PlayerCard.swift
//  TradingCards
//
//  Created by Judy Yu on 2021-11-09.
//

import SwiftUI

struct PlayerCard: Identifiable {
    
    //Stored properties
    
    let id = UUID()
    let backgroundImage: String
    let photoName: String
    let playerName: String
    let teamName: String
    let firstColumnOfData: String
    let secondColumnOfData: String
    let teamLogo: String
    let rowColor: Color
    
}

let ListOfPlayers = [
    
    PlayerCard(backgroundImage: "HockeyCardsBackground",
               photoName: "JackJohnson",
               playerName: "Jack Johnson",
               teamName: "New York Rangers",
               firstColumnOfData: """
Age: 34
Number: 3
Born: United States
Pos: LD
""",
               secondColumnOfData: """
Proj. WAR %: 2%
EV Off: 3%
PK: 6%
QoC: 52%
Finishing: 27%
"""
               , teamLogo: "NYR", rowColor: Color("navyBlue"))
    ,
    PlayerCard(backgroundImage: "OSHockeyCardsBackground",
               photoName: "MattMurray",
               playerName: "Matt Murray",
               teamName: "Ottawa Senators",
               firstColumnOfData: """
Age: 27
Number: 30
Born: Thunder Bay, Canada
Role: 1A
""",
               secondColumnOfData: """
GP%: 55%
EV: 15%
PK: 56%
QS: 21%
Consist: 9%
""",
               teamLogo: "OS", rowColor: Color("darkRed"))
    ,
    PlayerCard(backgroundImage: "SecondHockeyCardsBackground",
               photoName: "VictorHedman",
               playerName: "Victor Hedman",
               teamName: "Tampa Bay Lightning",
               firstColumnOfData: """
Age: 30
Number: 77
Born: Sweden
Pos: Defenseman
""",
               secondColumnOfData: """
Proj. WAR %: 97%
EV Off: 91%
EV Def: 78%
PK: 97%
Finishing: 90%
""",
               teamLogo: "TBL", rowColor: Color("gold"))
    ,
    PlayerCard(backgroundImage: "HockeyCardsBackground",
               photoName: "ArtemiPanarin",
               playerName: "Artemi Panarin",
               teamName: "New York Rangers",
               firstColumnOfData: """
Age: 30
Number: 77
Born: Korkino, Russia
Pos: Left Wing
""",
               secondColumnOfData: """
GP: 13%
oZS: 52.3%
G: 2
A: 11
SH: 21
""",
               teamLogo: "NYR", rowColor: Color("navyBlue"))
    ,
    PlayerCard(backgroundImage: "OSHockeyCardsBackground",
               photoName: "ShanePinto",
               playerName: "Shane Pinto",
               teamName: "Ottawa Senators",
               firstColumnOfData: """
Age: 20
Number: 12
Born: New York, United States
Pos: Centerman
""",
               secondColumnOfData: """
GP: 4
A: 1
P: 1
S: 5
PIM: 2
""",
               teamLogo: "OS", rowColor: Color("darkRed"))
]
