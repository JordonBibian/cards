//
//  CardView.swift
//  Cards Rework
//
//  Created by Jordon Bibian on 3/21/23.
//

import SwiftUI

struct CardView: View {
    var card: Card
    @State var isBackVisible = false
    var degrees: Double {
        isBackVisible ? 180 : 0
    }
    var cardBackgroundColor: Color {
        isBackVisible ? Color.green : Color.orange
    }
    var body: some View {
        ZStack {
            Group {
                Text(card.back)
                    .scaleEffect(x: -1)
                    .opacity(isBackVisible ? 1 : 0)
                Text(card.front)
                    .opacity(isBackVisible ? 0 : 1)
            }
            .font(.system(size: 24))
            .bold()
            .multilineTextAlignment(.center)
            Button {
                withAnimation {
                    isBackVisible.toggle()
                }
            } label: {
                Image(systemName: "arrow.left.arrow.right.circle.fill")
                    .font(.system(size: 36))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottomTrailing)
        }
        .padding()
        .frame(width: 300, height: 225)
        .background(cardBackgroundColor)
        .cornerRadius(10)
        .shadow(radius: 10)
        .padding()
        .rotation3DEffect(.degrees(degrees),
                          axis: (x: 0.0, y: 1.0, z: 0.0)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static let cards = [
            Card(front: "What is 7+7?", back: "14"),
            Card(front: "What is the airspeed of an unladen swallow?", back: "African or European?")
    ]
    static var previews: some View {
        ForEach(cards) { card in
            CardView(card: card)
        }
    }
}
