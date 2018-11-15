//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gameLabel: UILabel!
    

    var activeGame = true
    var myGameStatus = [0,0,0,0,0,0,0,0,0]
    let winningcondition = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

    var activePlayer = 1
    @IBAction func MyGameButton(_ sender: UIButton) {
        let activePosition = sender.tag 
        if myGameStatus[activePosition] == 0 {
            
        myGameStatus[activePosition] = activePlayer
            
            if activePlayer == 1 {
        sender.setImage(UIImage(named: "Nought"), for: [])
        
            activePlayer = 2
        } else {
            sender.setImage(UIImage(named: "Cross"), for: [])
        activePlayer = 1
        }
   
            for combination in winningcondition {
                if myGameStatus[combination[0]] == 0 && myGameStatus[combination[0]] == myGameStatus[combination[1]] && myGameStatus[combination[1]] == myGameStatus[combination[2]] {
            activeGame = false
    
                   print(myGameStatus[combination[0]])
        func viewDidLoad() {
    super.viewDidLoad()

        

   
    // Do any additional setup after loading the view, typically from a nib.
  }


}

}
}
}
}
