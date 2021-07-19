//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Created the IBOutlets by Control-dragging from the two die images in the Main.storyboard to here - this created the linkage between the UI and the code
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    // Created the IBAction function to simulate the action of rolling the dice when the "roll" button is pressed
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       
        // Using an array to hold the dice images
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        // randomly change the individual die images
        // can randomize the index by one of two ways:
        // 1. diceArray[Int.random(in: 0...5)]
        // 2. diceArray.randomElement()
        diceImageView1.image = diceArray.randomElement()
        diceImageView2.image = diceArray.randomElement()
        
    }
    
}

