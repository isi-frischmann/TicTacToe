//
//  ViewController.swift
//  TicTacToe
//
//  Created by Isabell Frischmann on 9/5/18.
//  Copyright © 2018 Isabell Frischmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var winnerLabel: UILabel!
    
// create an Outlet to set all buttons back to gray when the reset button is clicked (array of UIButtons)
    @IBOutlet var buttons: [UIButton]!
    
    var player: Int = 1
    
//    empty array to check who won
    var game: [Int] = [
        0, 0, 0,
        0, 0, 0,
        0, 0, 0
    ]
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        if player == 1 {
            sender.backgroundColor = UIColor.purple
            game[sender.tag] = player
        }
        else {
            sender.backgroundColor = UIColor.black
            game[sender.tag] = player
        }
        
//        Multiply the player by -1 will switch the turn from the players
        player *= -1
        print("That's the array from the game -> \(game)")
        
//        find out who won
//        for var i in 0...game.count - 3 {
//            if game[i] == game[i + 1] && game[i] == game[i + 2] && game[i] != 0 {
//                winnerLabel.text = "Player \(game[i]) WON"
//            }
//            if i < 4 {
//                i = i + 3
//            }
//            if game[0] == game[i + 1] && game[i] == game[i + 3] && game[i] != 0 {
//                winnerLabel.text = "Player \(game[i]) WON"
//            }
//        }
//        check first vertical row
        if game[0] == game[1] && game[0] == game[2] && game[1] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
//        check second vertical row
        if game[3] == game[4] && game[4] == game[5] && game[4] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check third vertical row
        if game[6] == game[7] && game[7] == game[8] && game[7] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check first horizontal row
        if game[0] == game[3] && game[3] == game[6] && game[3] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check second horizontal row
        if game[1] == game[4] && game[4] == game[7] && game[4] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check third horizontal row
        if game[2] == game[5] && game[5] == game[8] && game[5] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check inclined left
        if game[0] == game[4] && game[4] == game[8] && game[4] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
        
//        check inclined right
        if game[2] == game[4] && game[4] == game[6] && game[4] != 0 {
            if player == player {
                winnerLabel.text = "Player ONE WON"
            }
            else {
                winnerLabel.text = "Player TWO WON"
            }
        }
    }

//    Reset button pressed
    @IBAction func resetPressed(_ sender: UIButton) {
        for i in buttons {
            i.backgroundColor = UIColor.gray
        }
        winnerLabel.text = "Winner Label"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

