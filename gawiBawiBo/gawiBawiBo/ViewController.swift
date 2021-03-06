//
//  ViewController.swift
//  gawiBawiBo
//
//  Created by John Garrigues on 7/19/21.
//
// TODO: add English language descriptions for the winner

import UIKit

class ViewController: UIViewController {
    
    // build Constant/Let arrays for Visitor and Home players in __ categories
    // 1. Grey - Visitor & Home
    // 2. Lose - Visitor & Home
    // 3. Win - Visitor & Home
    let greyHomeArray = [#imageLiteral(resourceName: "gawiGrey"),#imageLiteral(resourceName: "bawiGrey"),#imageLiteral(resourceName: "boGrey")]
    let iconTextHan = ["가위","바위","보"]
    let iconTextEng = ["Scissors","Rock","Paper"]
    let greyVisitorArray = [#imageLiteral(resourceName: "alt_gawiGrey"), #imageLiteral(resourceName: "alt_bawiGrey"), #imageLiteral(resourceName: "alt_boGrey")]
    let winHomeArray = [#imageLiteral(resourceName: "gawiWin"),#imageLiteral(resourceName: "bawiWin"),#imageLiteral(resourceName: "boWin")]
    let winVisitorArray = [#imageLiteral(resourceName: "alt_gawiWin"), #imageLiteral(resourceName: "alt_bawiWin"), #imageLiteral(resourceName: "alt_boWin")]
    var showImageButton = true
    var showLanguage = "Han"
    
    // set some variables for scorekeeping
    var homeWins = 0
    var visitorWins = 0
    var plays = 0
    var ties = 0

    
    // Created the IBOutlets by Control-dragging from the two die images in the Main.storyboard to here - this created the linkage between the UI and the code

    @IBOutlet weak var handImageHome: UIImageView!
    @IBOutlet weak var handImageVisitor: UIImageView!
    @IBOutlet weak var playCountLabel: UILabel!
    @IBOutlet weak var visitorWinsLabel: UILabel!
    @IBOutlet weak var homeWinsLabel: UILabel!
    @IBOutlet weak var visitorLabel: UILabel!
    @IBOutlet weak var homeLabel: UILabel!
    
    override func viewDidLoad() {
        // show the greyHome and greyVisitor Arrays in sequence "Gawi, Bawi, Bo"
        handImageHome.image = greyHomeArray[0]
        handImageVisitor.image = greyVisitorArray[0]
        playCountLabel.text = "Plays: \(plays) - Ties: \(ties)"
        homeWinsLabel.text = "Home: \(homeWins)"
        visitorWinsLabel.text = "Visitor: \(visitorWins)"
        if showImageButton == true {
            visitorLabel.text = nil
            homeLabel.text = nil
        } else {
            visitorLabel.text = nil
            homeLabel.text = nil
        }
    }
    
    // make a switch in bottom, left corner that allows us to show/hide name labels
    @IBAction func nameImageSwitch(_ sender: Any) {
        if (sender as AnyObject).isOn {
            showImageButton = true
        } else {
            showImageButton = false
        }
    }

    @IBAction func languageSwitch(_ sender: Any) {
        if (sender as AnyObject).isOn {
            showLanguage = "Han"
        } else {
            showLanguage = "Eng"
        }
    }
    
    // make a button that is almost the size of the entire screen, and is transparent, so the players can tap anywhere on the screen to play a round
    @IBAction func playButtonPressed(_ sender: Any) {
    
        // get random numbers for the players when dice are rolled
        // 3 possible numbers:
        // 1 = Gawi 가위
        // 2 = Bawi 바위
        // 3 = Bo 보
        let homeNumber = Int.random(in: 0...2)
        let visitorNumber = Int.random(in: 0...2)
        
        // this function will be called when the home player wins a round
        func homeVictory(homeNumber: Int, visitorNumber: Int) {
            handImageHome.image = winHomeArray[homeNumber]
            handImageVisitor.image = greyVisitorArray[visitorNumber]
            homeWins = homeWins + 1
            plays = plays + 1
            if showLanguage == "Han" {
                print("play: \(plays)\n - Visitor: \(iconTextHan[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextHan[homeNumber]) -- Rounds: \(homeWins)")
                print("homeWins: \(homeWins)\n")
            } else if showLanguage == "Eng" {
                print("play: \(plays)\n - Visitor: \(iconTextEng[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextEng[homeNumber]) -- Rounds: \(homeWins)")
                print("homeWins: \(homeWins)\n")
            }
            playCountLabel.text = "Plays: \(plays) - Ties: \(ties)"
            homeWinsLabel.text = "Home: \(homeWins)"
            visitorWinsLabel.text = "Visitor: \(visitorWins)"
            if showImageButton == true {
                if showLanguage == "Han" { homeLabel.text = iconTextHan[homeNumber] } else if showLanguage == "Eng" {homeLabel.text = iconTextEng[homeNumber] } else { homeLabel.text = nil }
                visitorLabel.text = nil
            } else {
                visitorLabel.text = nil
                homeLabel.text = nil
            }
        }
        
        // this function is for the visitor's wins
        func visitorVictory(homeNumber: Int, visitorNumber: Int) {
            handImageHome.image = greyHomeArray[homeNumber]
            handImageVisitor.image = winVisitorArray[visitorNumber]
            visitorWins = visitorWins + 1
            plays = plays + 1
            if showLanguage == "Han" {
                print("play: \(plays)\n - Visitor: \(iconTextHan[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextHan[homeNumber]) -- Rounds: \(homeWins)")
                print("visitorWins: \(visitorWins)\n")
            } else if showLanguage == "Eng" {
                print("play: \(plays)\n - Visitor: \(iconTextEng[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextEng[homeNumber]) -- Rounds: \(homeWins)")
                print("visitorWins: \(visitorWins)\n")
            }
            playCountLabel.text = "Plays: \(plays) - Ties: \(ties)"
            homeWinsLabel.text = "Home: \(homeWins)"
            visitorWinsLabel.text = "Visitor: \(visitorWins)"
            if showImageButton == true {
                if showLanguage == "Han" { visitorLabel.text = iconTextHan[visitorNumber] } else if showLanguage == "Eng" {visitorLabel.text = iconTextEng[visitorNumber] } else { visitorLabel.text = nil }
                homeLabel.text = nil
            } else if showImageButton == false {
                visitorLabel.text = nil
                homeLabel.text = nil
            }
        }
        
        // this function will be used when the players tie
        func tieRound(homeNumber: Int, visitorNumber: Int) {
            handImageHome.image = greyHomeArray[homeNumber]
            handImageVisitor.image = greyVisitorArray[visitorNumber]
            ties = ties + 1
            plays = plays + 1
            if showLanguage == "Han" {
                print("play: \(plays)\n - Visitor: \(iconTextHan[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextHan[homeNumber]) -- Rounds: \(homeWins)")
                print("ties: \(ties)\n")
            } else if showLanguage == "Eng" {
                print("play: \(plays)\n - Visitor: \(iconTextEng[visitorNumber]) -- Rounds: \(visitorWins)\n - Home: \(iconTextEng[homeNumber]) -- Rounds: \(homeWins)")
                print("ties: \(ties)\n")
            }
            playCountLabel.text = "Plays: \(plays) - Ties: \(ties)"
            homeWinsLabel.text = "Home: \(homeWins)"
            visitorWinsLabel.text = "Visitor: \(visitorWins)"
            if showImageButton == true {
                visitorLabel.text = nil
                homeLabel.text = nil
            } else {
                visitorLabel.text = nil
                homeLabel.text = nil
            }
        }
        
        if homeNumber == visitorNumber {
            tieRound(homeNumber: homeNumber, visitorNumber: visitorNumber)
        } else if homeNumber == 2 {
            if visitorNumber == 0 {
                visitorVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            } else if visitorNumber == 1 {
                homeVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            }
        } else if visitorNumber == 2 {
            if homeNumber == 0 {
                homeVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            } else if homeNumber == 1 {
                visitorVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            }
        } else if homeNumber == 1 {
            if visitorNumber == 0 {
                homeVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            } else if visitorNumber == 3 {
                visitorVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            }
        } else if visitorNumber == 1 {
            if homeNumber == 0 {
                visitorVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            } else if homeNumber == 3 {
                homeVictory(homeNumber: homeNumber, visitorNumber: visitorNumber)
            }
        }
    }
}

