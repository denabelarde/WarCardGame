//
//  ViewController.swift
//  WarCardGame
//
//  Created by Denver Abelarde on 11/08/2019.
//  Copyright © 2019 Denver IOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func tapDealButton(_ sender: Any) {
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber > rightNumber) {
            
            // Left side wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        }
        else if leftNumber < rightNumber {
            
            // Right side wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }
        else {
            // Tie
        }
    }
}

