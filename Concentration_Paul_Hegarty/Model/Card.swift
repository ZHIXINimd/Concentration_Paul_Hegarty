//
//  Card.swift
//  Concentration_Paul_Hegarty
//
//  Created by Bruce Wang on 4/4/20.
//  Copyright © 2020 Bruce Wang. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int{
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
