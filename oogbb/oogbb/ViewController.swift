//
//  ViewController.swift
//  oogbb
//
//  Created by John Garrigues on 8/6/21.
//
import UIKit
import Foundation
// define the Player class

class ViewController: UIViewController {

// class for the people playing gawi-bawi-bo
class Player {
    // properties
    var engName: String = ""
    var hanName: String = ""
    var wins: Int = 0
    var loses: Int = 0
    var ties: Int = 0
    var plays: Int = 0
    var noun: String = ""
    var result: String = ""
    
    // methods
    func win() {
        wins += 1
    }
    func lose() {
        loses += 1
    }
    func tie() {
        ties += 1
    }
}
// class for the gamepieces (hands) used to play
class Hand {
    // properties
    var engName: String = ""
    var hanName: String = ""
    var beats: String = ""
    var beatBy: String = ""
}

func applicationDidFinishLaunching() {
    let gawi: Hand = Hand()
    gawi.engName = "scissors"
    gawi.hanName = "가위"
    gawi.beats = "bo"
    gawi.beatBy = "bawi"

    let bawi: Hand = Hand()
    bawi.engName = "rock"
    bawi.hanName = "바위"
    bawi.beats = "gawi"
    bawi.beatBy = "bo"

    let bo: Hand = Hand()
    bo.engName = "paper"
    bo.hanName = "보"
    bo.beats = "bawi"
    bo.beatBy = "gawi"
}

//let a: Player = Player()
//a.engName = "John"
//let b: Player = Player()
//b.engName = "Kyong"





// using ternary conditional operator, which takes the form (question ? answer1 : answer2), to pluralize/singluarize adverbs
//print("\(a.engName) has \(a.wins)" + (a.wins != 1 ? " wins, " : " win, ") + "\(a.loses)" + (a.loses != 1 ? " losses, " : " loss, ") + "and \(a.ties)" + (a.ties != 1 ? " ties." : " tie."))
//print("\(b.engName) has \(b.wins)" + (b.wins != 1 ? " wins, " : " win, ") + "\(b.loses)" + (b.loses != 1 ? " losses, " : " loss, ") + "and \(b.ties)" + (b.ties != 1 ? " ties." : " tie."))
//
//bo.hanName
//gawi.hanName
//bawi.hanName
}
