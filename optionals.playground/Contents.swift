// this first one is just the playground where I was learning about nils, optionals?, and force unwraps!
////var player1Username: String = nil
//
//var player1Username: String? = nil
//
//player1Username = "JackInTheCrack"
//
////var unwrappedP1Username = player1Username!
//
//player1Username = nil
//
//
//if player1Username != nil {
//    print(player1Username!)
//} else {
//    print("the variable is a nil")
//}
//

// the next one is part of the Optionals Exercise


//Don't change this
var studentsAndScores = ["Amy": Int.random(in: 0...100), "James": Int.random(in: 0...100), "Helen": Int.random(in: 0...100)]

func highestScore() {
    print(studentsAndScores.values.max()!)
    }

//    let maximum = studentsAndScores.values.max()
//    print(maximum!)
  
  


highestScore()
