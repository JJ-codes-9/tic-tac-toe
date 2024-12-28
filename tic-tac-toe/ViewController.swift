//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 11/6/24.
//

import UIKit

class ViewController: UIViewController {

    // The outlet for the grid image
    @IBOutlet var grid: UIImageView!
    
    //Player buttons to show whose turn it is
    
    @IBOutlet var playerXButton: UIButton!
    @IBOutlet var playerOButton: UIButton!
    
    
    // The collection of each box as an array
    @IBOutlet var boxes: [UIButton]!
    
    // The TicTacToe board instance
    var board = TicTacToeBoard()
    
    // Track the current player (starting with Player X)
    var currentPlayer: TicTacToeBoard.Box = .playerX
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Testing ActivePlayer - remove later
        let activePlayer = ActivePlayer(player: .playerX)
        print("Current player: \(activePlayer.player.rawValue)")
        print("Next player: \(activePlayer.nextPlayer.rawValue)")
    }

    // Handle when a box is tapped
    @IBAction func boxTapped(_ sender: UIButton) {
        // Get the index of the tapped box
        guard let index = boxes.firstIndex(of: sender) else { return }
        
        // Check if the box is empty
        if board.play(at: index, for: currentPlayer) {
            // Box is empty: Update UI and switch players
            sender.setTitle(currentPlayer.rawValue, for: .normal)
            currentPlayer = (currentPlayer == .playerX) ? .playerO : .playerX
        } else {
            // Box is occupied: Show an alert
            showAlert()
        }
    }
    
    // Show an alert when the box is already occupied
    func showAlert() {
        let alert = UIAlertController(title: "Invalid Move", message: "This box is already occupied. Choose another box.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
