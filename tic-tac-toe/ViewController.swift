//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 11/6/24.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    
    // Tracks whose turn it is (starts with Player X)
    var currentPlayer: Player = .playerX
    
    // Called whenever a button on the board is tapped
    @IBAction func buttonTapped(_ sender: UIButton) {
        // Check if the button is currently empty
        if sender.title(for: .normal) == "" {
            // Set the tapped button’s title to the current player's marker ("X" or "O")
            sender.setTitle(currentPlayer.marker, for: .normal)
            
            // Switch to the next player
            currentPlayer = currentPlayer.next
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add border styling to all 9 buttons using their tags (1 to 9)
        for tag in 1...9 {
            if let button = view.viewWithTag(tag) as? UIButton {
                button.layer.borderWidth = 1
                button.layer.borderColor = UIColor.black.cgColor
            }
        }
    }
}
