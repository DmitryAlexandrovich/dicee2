//
//  ViewController.swift
//  Dicee App
//
//  Created by Python_data_processing on 08/04/2018.
//  Copyright © 2018 Digital Disruptive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    @IBOutlet weak var rollButton: UIButton!
    
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

updateDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rollButtonPressed(_ sender: Any) {
        updateDiceImages()
        
    }
    
    func updateDiceImages() {
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage (named: diceArray [randomDiceIndex1])
        diceImageView2.image = UIImage (named: diceArray [randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

























