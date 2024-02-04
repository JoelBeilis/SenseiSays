//
//  ViewController.swift
//  Sensei Says
//
//  Created by Joel Beilis on 2024-02-03.
//

import UIKit

class ViewController: UIViewController {
    // might need to reconnect these.....
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var missedLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Round the corners of the buttons
        roundButtonCorners()
        roundProgressBar()
        
        updateUI()
    }

    func roundButtonCorners() {
        let buttons = [choice1, choice2, choice3]
        for button in buttons {
            button?.layer.cornerRadius = 10 // Adjust this value to change the curvature
            button?.clipsToBounds = true
        }
    }
    
    func roundProgressBar() {
        progressBar?.layer.cornerRadius = 5
        progressBar.clipsToBounds = true
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        
        let answerChoices = quizBrain.getAnswers()
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())/74"
        missedLabel.text = "Missed Questions: \(quizBrain.mscore)"
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }
}
