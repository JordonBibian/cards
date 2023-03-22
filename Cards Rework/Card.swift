//
//  Card.swift
//  Cards Rework
//
//  Created by Jordon Bibian on 3/21/23.
//

import Foundation

struct Card: Identifiable {
    var id = UUID()
    var front: String
    var back: String
}
