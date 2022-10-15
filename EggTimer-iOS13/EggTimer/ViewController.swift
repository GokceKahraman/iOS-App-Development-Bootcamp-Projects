//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var sound: AVAudioPlayer!


class ViewController: UIViewController {
    
    let eggTimes = ["Soft":3, "Medium": 4, "Hard": 7]
   
    var timer = Timer()
    var totalTime = 0
    var secondPassed = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBAction func hardnessSelection(_ sender: UIButton) {
        
        timer.invalidate()
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        progressBar.progress = 0.0
        secondPassed = 0
        titleLabel.text = hardness
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateTimer(){
        if secondPassed < totalTime{
            secondPassed += 1
            progressBar.progress = Float(secondPassed) / Float(totalTime)
        } else {
            titleLabel.text = "Done"
            playSound()
            timer.invalidate()            
        }
    }
    
    func playSound() {
           let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
           sound = try! AVAudioPlayer(contentsOf: url!)
           sound.play()
                   
       }


}
