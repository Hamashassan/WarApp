//
//  ViewController.swift
//  WarApp
//
//  Created by Hamas Hassan on 1/23/21.
//  Copyright © 2021 Hamas Hassan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var leftCard: UIImageView!
    
    @IBOutlet weak var rightCard: UIImageView!
    
    @IBOutlet weak var playerScore: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onDealPress(_ sender: Any) {
        
        let leftCardRandomNum = arc4random_uniform(13)+2
        let rightCardRandomNum = arc4random_uniform(13)+2
        
        leftCard.image = UIImage(named:"card\(leftCardRandomNum)")
        rightCard.image = UIImage(named: "card\(rightCardRandomNum)")
        
        if leftCardRandomNum > rightCardRandomNum {
            leftScore += 1
            playerScore.text = String(leftScore)
        }else if rightCardRandomNum > leftCardRandomNum {
            rightScore += 1
            cpuScore.text = String(rightScore)
        }else{
            
        }
        
    }
    
}

