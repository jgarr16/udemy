//
//  ViewController.swift
//  gawiBawiBo
//
//  Created by John Garrigues on 7/19/21.
//

import UIKit

class ViewController: UIViewController {
    
    // build Constant/Let arrays for Visitor and Home players in __ categories
    // 1. Grey - Visitor & Home
    // 2. Lose - Visitor & Home
    // 3. Win - Visitor & Home
    let greyHomeArray = [#imageLiteral(resourceName: "gawiGrey"),#imageLiteral(resourceName: "bawiGrey"),#imageLiteral(resourceName: "boGrey")]
    let greyVisitorArray = [#imageLiteral(resourceName: "alt_gawiGrey"), #imageLiteral(resourceName: "alt_bawiGrey"), #imageLiteral(resourceName: "alt_boGrey")]
    let winHomeArray = [#imageLiteral(resourceName: "gawiWin"),#imageLiteral(resourceName: "bawiWin"),#imageLiteral(resourceName: "boWin")]
    let winVisitorArray = [#imageLiteral(resourceName: "alt_gawiWin"), #imageLiteral(resourceName: "alt_bawiWin"), #imageLiteral(resourceName: "alt_boWin")]
    let loseHomeArray = [#imageLiteral(resourceName: "gawiLose"),#imageLiteral(resourceName: "bawiLose"),#imageLiteral(resourceName: "boLose")]
    let loseVisitorArray = [#imageLiteral(resourceName: "alt_gawiLose"), #imageLiteral(resourceName: "alt_bawiLose"), #imageLiteral(resourceName: "alt_boLose")]
    
    // Created the IBOutlets by Control-dragging from the two die images in the Main.storyboard to here - this created the linkage between the UI and the code

    @IBOutlet weak var handImageHome: UIImageView!
    @IBOutlet weak var handImageVisitor: UIImageView!
    override func viewDidLoad() {
        // show the greyHome and greyVisitor Arrays in sequence "Gawi, Bawi, Bo"
        handImageHome.image = greyHomeArray[0]
        handImageVisitor.image = greyVisitorArray[0]
    }
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        
        // get random numbers for the players when dice are rolled
        // 3 possible numbers:
        // 1 = Gawi
        // 2 = Bawi
        // 3 = Bo
        var homeNumber = Int.random(in: 0...2)
        var visitorNumber = Int.random(in: 0...2)
        
        handImageHome.image = winHomeArray[homeNumber]
        handImageVisitor.image = loseVisitorArray[visitorNumber]
    }


}

