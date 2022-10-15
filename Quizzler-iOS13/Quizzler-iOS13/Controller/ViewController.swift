//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var optionalAnswer3: UIButton!
    @IBOutlet weak var optionalAnswer2: UIButton!
    @IBOutlet weak var optionalAnswer1: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle! // string True, False
        let userGotRight = quizBrain.checkAnswer(userAnswer)
       
        if userGotRight{
            sender.backgroundColor = UIColor.green
            
        }else {
            sender.backgroundColor = UIColor.red
        }
        
        quizBrain.nexQuestion()
    
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        
      }
    
    @objc func updateUI() {
        questionText.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        optionalAnswer1.backgroundColor = UIColor.clear
        optionalAnswer2.backgroundColor = UIColor.clear
        optionalAnswer3.backgroundColor = UIColor.clear
        
        let answerChoices = quizBrain.getAnswers()
        optionalAnswer1.setTitle(answerChoices[0], for: .normal)
        optionalAnswer2.setTitle(answerChoices[1], for: .normal)
        optionalAnswer3.setTitle(answerChoices[2], for: .normal)

    }
    
  
    

}

