//
//  CardModel.swift
//  MatchApp
//
//  Created by User on 1/10/23.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an epty array
        var generatedCArds = [Card]()
        
        // Randomly generate 8 pairs of cards
        for _ in 1...8 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            // Create two new card objects
            let cardOne = Card()
            let cardTwo = Card()
            
            // Set their image names
            cardOne.imageName = "card\(randomNumber)"
            cardTwo.imageName = "card\(randomNumber)"
            
            // Add them to the array
            generatedCArds += [cardOne, cardTwo]
            print(randomNumber)
        }
        
        //Randomize cards within the arrray
        generatedCArds.shuffle()
        
        // Return the array
        return generatedCArds
        
        
    }
    
}
