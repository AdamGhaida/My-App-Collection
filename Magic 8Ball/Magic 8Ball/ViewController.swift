//
//  ViewController.swift
//  Magic 8Ball
//
//  Created by Adam Abu Ghaida on 8/23/19.
//  Copyright © 2019 Adam Abu Ghaida. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let imageArray = ["ball1","ball2","ball3","ball4","ball5"]
    var ballState: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func askButton(_ sender: Any) {
        imageState()
    }
    @IBOutlet weak var ballImage: UIImageView!
    
    
    func imageState() {
        let state = Int.random(in: 0 ... 4)
         ballImage.image = UIImage(named: imageArray[state])
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        imageState()
    }
}

