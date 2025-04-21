//
//  EmojimemoryGame.swift
//  memorize
//
//  Created by Marcelo Nicacio on 20/04/2025.
//

import SwiftUI

class EmojiMemoryGame {
    private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
     
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["💅🏻","👠","👛"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    // Acess to the model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    //Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
