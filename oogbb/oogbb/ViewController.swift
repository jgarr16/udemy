//
//  ViewController.swift
//  oogbb
//
//  Created by John Garrigues on 8/6/21.
//

import Foundation
// define the Player class

class Player {
    // properties
    var name: String = ""
    var wins: Int = 0
    var loses: Int = 0
    var ties: Int = 0
    var plays: Int = 0

    // do I need an initializer, or is it automatically provided?

    // methods
    func win() {
        wins += 1
    }
}



