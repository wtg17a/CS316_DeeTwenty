//
//  ViewController.swift
//  DeeTwenty
//
//  Created by William Gibbs on 1/21/20.
//  Copyright © 2020 William Gibbs. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{

    @IBOutlet weak var diceImageView: UIImageView!
    @IBOutlet weak var criticalLabel: UILabel!
    
    var rollSound: AVAudioPlayer?
    var failSound: AVAudioPlayer?
    var critSound: AVAudioPlayer?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func rollDice()
    {
        let roll = Int.random(in: 1...20)
        let imageName = "d\(roll)"
        diceImageView.image = UIImage(named: imageName)
        
        rollSound?.currentTime = 0
        rollSound?.play()
        
        if(imageName == "d1")
        {
            criticalLabel.text = "The truth is, the game was rigged from the start."
            criticalLabel.isHidden = false
            failSound?.currentTime = 0
            failSound?.play()
        }
        else if(imageName == "d20")
        {
            criticalLabel.text = "I don't make many mistakes, so probability favors me."
            criticalLabel.isHidden = false
            critSound?.currentTime = 0
            critSound?.play()
        }
        else
        {
            criticalLabel.isHidden = true
        }
    }
}

