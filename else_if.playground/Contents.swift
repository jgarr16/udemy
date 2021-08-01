import UIKit


//func loveCalculator() {
//    let loveScore = Int.random(in: 0...100)
//    if loveScore>=80 {
//        print("You love each other like Kanye loves Kanye (i.e., \(loveScore))!")
//    } else if loveScore>=40 {
//        print("You go together like Code and Mentos (i.e., \(loveScore))!")
//    } else {
//        print("You'll be forever alone (i.e., \(loveScore))!")
//    }
//}

func loveCalculator() {
    let loveScore = Int.random(in: 0...100)
    switch loveScore {
    case 80...:
        print("You love each other like Kanye loves Kanye (i.e., \(loveScore))!")
    case 40..<80:
        print("You go together like Code and Mentos (i.e., \(loveScore))!")
    case ..<40:
        print("You'll be forever alone (i.e., \(loveScore))!")
    default:
        print("Error")
    }
}
loveCalculator()
