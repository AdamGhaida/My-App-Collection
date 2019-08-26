//
//  ViewController.swift
//  WarCardGame
//
//  Created by Adam Abu Ghaida on 8/20/19.
//  Copyright © 2019 Adam Abu Ghaida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LeftIV: UIImageView!
    
    @IBOutlet weak var RightIV: UIImageView!
    
    @IBOutlet weak var winner: UILabel!
    
    
    @IBOutlet weak var leftScore: UILabel!
    
    @IBOutlet weak var rightScore: UILabel!
    
    var lScore = 0
    var rScore = 0
    var rs = 0
    var ls = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        

    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNum = Int.random(in: 2...14)
        //print(leftNum)
        let rightNum = Int.random(in: 2...14)
        //print(rightNum)
        
        
        LeftIV.image = UIImage(named:  "card\(leftNum)")
        RightIV.image = UIImage(named:  "card\(rightNum)")
        
        if leftNum > rightNum{
            lScore += 1
            leftScore.text = String(lScore)
        }
        else if leftNum < rightNum{
            rScore += 1
            rightScore.text = String(rScore)
        }
        if rScore == 20 || lScore == 20{
            LeftIV.image = UIImage(named: "back")
            RightIV.image = UIImage(named: "back")
            if rScore == 20{
                ls = 1
                 winner.text = "CPU wins!"
                
            }
            else if lScore == 20{
                ls = 1
                winner.text = "YOU win!"
            }
            
            }
        func checkbi() -> Bool{
            if ls == 1{
                return 1
            }

        }

    }
    
}

