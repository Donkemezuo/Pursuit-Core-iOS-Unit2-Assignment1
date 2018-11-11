//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstButton: GameButton!
    @IBOutlet weak var secondButton: GameButton!
    @IBOutlet weak var thirdButton: GameButton!
    @IBOutlet weak var fourthButton: GameButton!
    @IBOutlet weak var fifthButton: GameButton!
    @IBOutlet weak var sixthButton: GameButton!
    @IBOutlet weak var seventhButton: GameButton!
    @IBOutlet weak var eightButton: GameButton!
    @IBOutlet weak var ninethButton: GameButton!
    @IBOutlet weak var gameLabel: UILabel!
    
    @IBOutlet weak var scores: UILabel!
    var scoresBoard = 0
    
    @IBAction func myGame(_ sender: GameButton) {
    }
    
    
    @IBAction func theGame (_ sender: GameButton) {
        
        
        
var images:[UIImage] = [UIImage(named: "TicTacToeCross")!, UIImage(named: "TicTacToeNoughts")!]
        
let firstPlayer = images[0]
let secondPlayer = images[1]
        
var myGameButtons:[[GameButton]] = [[firstButton, secondButton, thirdButton],
                                            [fourthButton,
                                             fifthButton, sixthButton],
                                            [seventhButton, eightButton, ninethButton]
        ]
        
var winConditions = [[firstButton, fourthButton, seventhButton],[secondButton, fifthButton, eightButton], [thirdButton, sixthButton, ninethButton], [firstButton, fifthButton, ninethButton], [thirdButton, fifthButton, seventhButton]
        ]
        
var firstPlayerThreeButtons:[GameButton] = []
var secondPlayerThreeButtons:[GameButton] = []
        
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()

        

   
    // Do any additional setup after loading the view, typically from a nib.
  }


}

