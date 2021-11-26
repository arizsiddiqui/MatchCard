//
//  CardModel.swift
//  MatchApp
//
//  Created by Ariz Siddiqui on 22/02/21.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        var generatedCards = [Card]()
        var generatedNumbers = [Int]()
        
        while generatedNumbers.count < 8 {
            
            let randomNumber = Int.random(in: 1...13)
            
            if generatedNumbers .contains(randomNumber) {
                continue
            }
            
            let cardOne = Card()
            let cardTwo = Card()
            
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            generatedCards += [cardOne, cardTwo]
            generatedNumbers.append(randomNumber)
        }
        
        generatedCards.shuffle()
        
        return generatedCards
    }
}
