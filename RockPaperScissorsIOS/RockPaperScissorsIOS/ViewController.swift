//
//  ViewController.swift
//  RockPaperScissorsIOS
//
//  Created by Andrew Flowers on 9/22/20.
//  Copyright © 2020 Andrew Flowers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func computersMove () {
        instructionText.text = "Wanna play again?"
        
        var choiceNum = Int.random(in:1...3)
        switch choiceNum {
        case 1:
            computerChoice.text = "Rock"
        case 2:
            computerChoice.text = "Paper"
        case 3:
            computerChoice.text = "Scissors"
        default:
            computerChoice.text = "---"
        }
        
        if computerChoice.text == userChoice {
            resultText.text = "It's a tie!"
        } else {
            //instances where you win
            if userChoice == "Rock" && computerChoice.text == "Scissors"{resultText.text = "You win!"}
            if userChoice == "Scissors" && computerChoice.text == "Paper"{resultText.text = "You win!"}
            if userChoice == "Paper" && computerChoice.text == "Rock"{resultText.text = "You win!"}
            
            //instances where the computer wins
            if computerChoice.text == "Rock" && userChoice == "Scissors"{resultText.text = "You lose!"}
            if computerChoice.text == "Scissors" && userChoice == "Paper"{resultText.text = "You lose!"}
            if computerChoice.text == "Paper" && userChoice == "Rock"{resultText.text = "You lose!"}
            
        }
        
        //update scores
        if resultText.text == "You win!" {
            userScore = userScore + 1;
        }
        if resultText.text == "You lose!" {
            compScore = compScore + 1;
        }
        compScoreBoard.text = String(compScore)
        userScoreBoard.text = String(userScore)
        
            
    }

    @IBOutlet weak var instructionText: UILabel!
    @IBOutlet weak var computerChoice: UILabel!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var userScoreBoard: UILabel!
    @IBOutlet weak var compScoreBoard: UILabel!
    
    var userChoice = "null"
    var userScore = 0
    var compScore = 0
    
    //Player Options
    @IBAction func selectedRock(_ sender: Any) {
        userChoice = "Rock"
        computersMove()
    }
    @IBAction func selectedPaper(_ sender: Any) {
        userChoice = "Paper"
        computersMove()
    }
    @IBAction func selectedScissors(_ sender: Any) {
        userChoice = "Scissors"
        computersMove()
    }
    
    
}

