//
//  Player.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 12/14/24.
//

import Foundation

enum Player: String {
    case playerX = "X"
    case playerO = "O"
}


struct ActivePlayer {
    var player: Player
    var nextPlayer: Player {
        switch player {
        case .playerX:
            return .playerO
        case .playerO:
            return .playerX
        }
    }
}
