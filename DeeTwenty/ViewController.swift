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

    @IBOutlet weak var diceImageiew: UIImageView!
    @IBOutlet weak var criticalLabel: UILabel!
    
    var rollSound: AVAudioPlayer
    var failSound: AVAudioPlayer
    var critSound: AVAudioPlayer
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func rollDice()
    {
        let roll = Int.random(in: 1...20)
        let imageName = "d\(roll)"
        
        
    }
}

