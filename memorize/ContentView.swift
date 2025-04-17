//
//  ContentView.swift
//  memorize
//
//  Created by Marcelo Nicacio on 17/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ForEach(0..<4){index in
              CardView(isFaceUp: false)
            }
        }
        .padding()
        .foregroundStyle(Color.orange)
        .font(Font.largeTitle)
    }
}

struct CardView: View{
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        }
    }
    
}

#Preview {
    ContentView()
}
