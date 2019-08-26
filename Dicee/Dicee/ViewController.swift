//
//  ViewController.swift
//  Dicee
//
//  Created by Adam Abu Ghaida on 8/23/19.
//  Copyright © 2019 Adam Abu Ghaida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3","dice4","dice5","dice6",]
    
    var randomLeftDice: Int = 0
    var randomRightDice: Int = 0
    @IBOutlet weak var leftFace: UIImageView!
    
    @IBOutlet weak var rightFace: UIImageView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }
    @IBAction func rollButton(_ sender: Any) {
        updateDice()
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    func updateDice(){
        randomLeftDice = Int.random(in: 0 ... 5)
        randomRightDice = Int.random(in: 0 ... 5)
        
        leftFace.image = UIImage(named: diceArray[randomLeftDice])
        rightFace.image = UIImage(named: diceArray[randomRightDice])
    }
}

