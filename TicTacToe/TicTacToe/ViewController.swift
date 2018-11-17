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
    @IBOutlet weak var scoresBoard:UILabel!
    
    @IBOutlet weak var NewGame: UIButton!
    
    @IBOutlet var allMyButtons: [GameButton]!
    
    var gameCards:[UIImage] = [UIImage(named: "Cross")!, UIImage(named: "Nought")!]
    
    var firstPlayerScore = 0
    var secondPlayerScore = 0
    var tie = 0
    var myGameBoard = [
                        ["","",""],
                        ["","",""],
                        ["","",""]
    ]
    var activePlayer = 1
    
    func myRowWinningCondition(arr:[[String]]) {
        for row in myGameBoard {
            if row == ["X", "X", "X"] {
                firstPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 1 won
                """
         
            } else if row == ["O", "O", "O"] {
                secondPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 2 won
                """
            }
        }
    }
//            } else {
//                tie += 1
//    }
//    }
//    }
    func myColumnWinningCondition(arr: [[String]]) {
        for columnIndex in 0..<arr[0].count {
            if arr[0][columnIndex] == "X" && arr[1][columnIndex] == "X" && arr[2][columnIndex] == "X" {
                firstPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 1 won
                """
                
            } else if arr[0][columnIndex] == "O" && arr[1][columnIndex] == "O" && arr[2][columnIndex] == "O"{
                secondPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 2 won
                """
                
        
//        } else {
//            tie += 1
//                scoresBoard.text = """
//                It's a tie
//                """
//        }
//        }
    }
        }
    }
    func myFirstDiagonalWinningCondition(arr:[[String]]) {
        var myFirstDiagonal = [String]()
        for indexString in 0..<arr.count{
            myFirstDiagonal.append(arr[indexString][indexString])
            if myFirstDiagonal == ["X","X","X"]{
                firstPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 1 won
                """
                
            } else if myFirstDiagonal == ["O","O","O"]{
                secondPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 2 won
                """
//    } else {
//            tie += 1
//                scoresBoard.text = """
//                It's a tie
//                """
//        }
        }
    }
    }
    func mySecondDiagonalWinningCondition(arr:[[String]]){
        var mySecondDiagonal = [String]()
        for index in 0..<arr.count{
            mySecondDiagonal.append(arr[index][arr.count - 1 - index])
            if mySecondDiagonal == ["X","X","X"]{
                firstPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 1 won
                """
                
            } else if mySecondDiagonal == ["O","O","O"] {
                secondPlayerScore += 1
                scoresBoard.text = """
                player 1 score = \(firstPlayerScore)
                player 2 score = \(secondPlayerScore)
                Tie = \(tie)
                Player 2 won
                """
//            } else {
//            tie += 1
//                scoresBoard.text = """
//                It's a tie
//                """
//    }
        }
    }
    }
    
    func myGameBoardUpdate(currentLocation:(Int,Int)){
        if activePlayer == 1 {
            myGameBoard[currentLocation.0][currentLocation.1] = "X"
            myRowWinningCondition(arr: myGameBoard)
            myColumnWinningCondition(arr: myGameBoard)
            myFirstDiagonalWinningCondition(arr: myGameBoard)
            mySecondDiagonalWinningCondition(arr: myGameBoard)
            
             activePlayer = 2
        } else if activePlayer == 2 {
            myGameBoard[currentLocation.0][currentLocation.1] = "O"
            myColumnWinningCondition(arr: myGameBoard)
            myRowWinningCondition(arr: myGameBoard)
            myFirstDiagonalWinningCondition(arr: myGameBoard)
            mySecondDiagonalWinningCondition(arr: myGameBoard)
            activePlayer = 1
    }
    }
@IBAction func MyGameButton(_ sender: GameButton) {
    switch activePlayer {
    case 1:
    sender.setImage(UIImage.init(named: "Cross"), for: .normal)
    case 2:
        sender.setImage(UIImage.init(named:"Nought"), for: .normal)
    default:
        print("unknown Player")
    }
    let currentPosition = (sender.row,sender.col)
        sender.isEnabled = false
    myGameBoardUpdate(currentLocation: currentPosition)
   print(myGameBoard)
    }
override func viewDidLoad() {
    super.viewDidLoad()

        

   
    // Do any additional setup after loading the view, typically from a nib.
  


}
    @IBAction func gameRestart(_ sender: UIButton) {
        for button in allMyButtons {
            button.isEnabled = true
            
        
        }
        var myGameBoard = [
            ["","",""],
            ["","",""],
            ["","",""]
        ]
    }





//}
//}
//}
    
}

