//
//  TicTacToeBoard.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 12/27/24.
//


struct TicTacToeBoard {
    enum Box: String {
        case empty = "-" // No player has played here
        case playerX = "X"// Player X's mark
        case playerO = "O"// Player O's mark
    }
    
    //Initializes the boxes array with 9 elements, each set to .empty (an instance of the Box enum).
    var box: [Box] = Array(repeating: Box.empty, count: 9)
    //repeatedValue
    //The element to repeat.
    //count
    //The number of times to repeat the value passed in the repeating parameter. count must be zero or greater.
    
    
    // Function to check and play
       mutating func play(at i: Int, for player: Box) -> Bool {
           guard i >= 0 && i < box.count else { return false } // Invalid index
           if box[i] == .empty {
               box[i] = player // Mark the box with the player's symbol
               return true
           }
           return false // Box is already occupied
       }
 
}

