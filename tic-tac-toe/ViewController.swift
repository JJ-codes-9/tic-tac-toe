//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Ceyda Bulat on 11/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        // Testing Player and ActivePlayer
        let activePlayer = ActivePlayer(player: .playerX) // Create an ActivePlayer instance
        print("Current player: \(activePlayer.player.rawValue)") // Prints: Current player: X
        print("Next player: \(activePlayer.nextPlayer.rawValue)") // Prints: Next player: O

    }

    @IBOutlet var grid: UIImageView!
    
    @IBAction func playerO(_ sender: UIButton) {
     
    }
    
    @IBAction func playerX(_ sender: UIButton) {
    }
    
}
