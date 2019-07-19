//
//  ViewController.swift
//  Dicee
//
//  Created by Rene Ferguson on 7/18/19.
//  Copyright © 2019 Rene Ferguson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0

    //interface builder outlet, type is UIImageView
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        rollDice()
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        rollDice()
    }
    
    func rollDice(){
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        transition(view: diceImageView1, image: UIImage(named: diceArray[randomDiceIndex1])!)
        transition(view: diceImageView2, image: UIImage(named: diceArray[randomDiceIndex2])!)
    
    }
    
    func transition(view: UIImageView, image: UIImage){
        UIView.transition(with: view,
                          duration:0.25,
                          options: .transitionCrossDissolve,
                          animations: { view.image = image},
                          completion: nil)
    }

}

