//
//  Player.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 12/14/24.
//

import Foundation
import UIKit

// Represents the two players of the game
enum Player: String {
    case playerX
    case playerO

    // Returns the marker symbol for each player ("X" or "O")
    var marker: String {
        switch self {
        case .playerX: return "X"
        case .playerO: return "O"
        }
    }

    // Returns the next player (used to switch turns)
    var next: Player {
        switch self {
        case .playerX: return .playerO
        case .playerO: return .playerX
        }
    }
}






