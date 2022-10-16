//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var stories = StoryBrain()
    let leftTurn = 1;
    let rightTurn = 2;
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @objc func updateUI() {
        storyLabel.text = stories.getStory()
        choice1Button.setTitle(stories.choice1(), for: .normal)
        choice2Button.setTitle(stories.choice2(), for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let checkAnswer = stories.nextStory(userChoice: userAnswer)
                
        if (checkAnswer != 0) {
                    sender.backgroundColor = UIColor.green
        } else {
                    sender.backgroundColor = UIColor.red
        }
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}
