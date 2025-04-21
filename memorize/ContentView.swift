//
//  ContentView.swift
//  memorize
//
//  Created by Marcelo Nicacio on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack{
            ForEach(viewModel.cards){card in
                CardView(card: card).onTapGesture {
                    viewModel.choose(card: card )}
            }
        }
        .padding()
        .foregroundStyle(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var card: MemoryGame<String>.Card
    
    var body: some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text(card.content)
                
                
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
    
}

#Preview {
    ContentView(viewModel: EmojiMemoryGame())
}
