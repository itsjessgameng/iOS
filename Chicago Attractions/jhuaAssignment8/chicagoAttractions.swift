//
//  chicagoAttractions.swift
//  jhuaAssignment8
//
//  Created by Jessica Hua on 3/6/17.
//  Copyright © 2017 DePaul University. All rights reserved.
//

import Foundation

let attractions = [
    chicagoAttraction(
        name: "Navy Pier",
        type: .sight,
        shortDescription: "Sight",
        longDescription: "Navy Pier is a 3,300 foor-ling pier on the shore line of Chicago with 50 acres of parks, gardens, shops, resturants, and family attractons and exhibition facilities."
        ),
    
    chicagoAttraction(
        name: "Skydeck Chicago",
        type: .sight,
        shortDescription: "Sight",
        longDescription: "103rd floor of the Willis Tower with clear observation boxes and views extending to four states."
    ),
    
    chicagoAttraction(
        name: "Millennium Park",
        type: .sight,
        shortDescription: "Sight",
        longDescription: "A 24.5 acre park that is the center of world-class art, music, architecture, and landscape design where you can experience public art, ice skating, classical music presentations and more."
    ),
    
    chicagoAttraction(
        name: "Studio Paris",
        type: .nightlife,
        shortDescription: "Night Life",
        longDescription: "A DJ-driven party scene with bottle service draws a flashy crowd to this chic indoor/outdoor lounge."
    ),
    
    chicagoAttraction(
        name: "Three Dots and a Dash",
        type: .nightlife,
        shortDescription: "Night Life",
        longDescription: "Tiki drinks (flaming options included), 200+ rums & luau bites in a retro Polynesian-island setting."
    ),
    
    chicagoAttraction(
        name: "Shay",
        type: .nightlife,
        shortDescription: "Night Life",
        longDescription: "Contemporary lounge with cocktails & light fare plus a swanky bar, bottle service & DJs."
    ),
    
    chicagoAttraction(
        name: "The Water Tower",
        type: .shopping,
        shortDescription: "Shopping",
        longDescription: "Water Tower Place is a large urban, mixed-use development comprising a 758,000 sq ft shopping mall and 74 story skyscraper in Chicago, Illinois, United States. "
    ),
    
    chicagoAttraction(
        name: "The Shops at North Bridge",
        type: .shopping,
        shortDescription: "Shopping",
        longDescription: "A mix of stores (clothing, jewelry, cosmetics) shares space with a food court & popular restaurants."
    ),
    
    chicagoAttraction(
        name: "900 North Michigan Shop",
        type: .shopping,
        shortDescription: "Shopping",
        longDescription: "Features the city's only Bloomingdale's and over 70 shops and restaurants."
    ),
    
    chicagoAttraction(
        name: "Giordano's",
        type: .restaurant,
        shortDescription: "Restaurant",
        longDescription: "Giordano's is a pizzeria that specializes in Chicago-style stuffed pizza."
    ),
    
    chicagoAttraction(
        name: "Portillo's",
        type: .restaurant,
        shortDescription: "Restaurant",
        longDescription: "Portillo's is an American restaurant chain that specializes in serving Chicago-style food."
    ),
    
    chicagoAttraction(
        name: "Summer House Santa Monica",
        type: .restaurant,
        shortDescription: "Restaurant",
        longDescription: "Sunny restaurant serving New American grub, tropical drinks & more in an airy space with an atrium."
    )

]


class chicagoAttraction{

    enum `Type`: String {
        case sight = "sight"
        case nightlife = "nightlife"
        case shopping = "shopping"
        case restaurant = "restaurant"
    }
    
    var name: String
    var type: Type
    var shortDescription: String
    var longDescription: String
    
    init(name: String, type: Type, shortDescription: String, longDescription: String) {
        self.name = name
        self.type = type
        self.shortDescription = shortDescription
        self.longDescription = longDescription
    }

    
}
