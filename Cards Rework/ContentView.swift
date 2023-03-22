//
//  ContentView.swift
//  Cards Rework
//
//  Created by Jordon Bibian on 3/21/23.
//

import SwiftUI

struct ContentView: View {
    @State var cards = [
        Card(front: "What is 7+7?", back: "14"),
        Card(front: "What is the airspeed velocity of an unladen swallow?", back: "African or European?"),
        Card(front: "From what is cognac made?", back: "Grapes")
        ]
    @State var isShowingCardView = false
    
    var body: some View {
        ZStack {
            CardDeckView(cards: cards)
            Button {
                isShowingCardView = true
            } label: {
                Image(systemName: "plus")
                    .font(.headline)
                    .padding()
                    .background(Color.orange)
                    .clipShape(Circle())
            }
            .padding([.top, .trailing])
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        }
        .sheet(isPresented: $isShowingCardView, onDismiss: { print(isShowingCardView) }) {
            CreateCardView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
