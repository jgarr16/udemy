import UIKit


func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    if loveScore>=80 {
        print("You love each other like Kanye loves Kanye (i.e., \(loveScore))!")
    } else if loveScore>=40 {
        print("You go together like Code and Mentos (i.e., \(loveScore))!")
    } else {
        print("You'll be forever alone (i.e., \(loveScore))!")
    }
}

loveCalculator()
