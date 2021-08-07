
// the class
class Player {
    var name:String = ""
    var wins:Int = 0
    var loses:Int = 0
    var ties:Int = 0
    var plays:Int = 0
}

class Gamepiece {
    var fingers:Int = 0
    var beats:String = ""
    var beatBy:String = ""
    func win()
    {
        print("Win")
    }
    func lose()
    {
        print("Lose")
    }
    func tie()
    {
        print("Tie")
    }
}

let gawi:Gamepiece = Gamepiece()
gawi.fingers = 2
gawi.beats = "bo"
gawi.beatBy = "bawi"

let bawi:Gamepiece = Gamepiece()
bawi.fingers = 0
bawi.beats = "gawi"
bawi.beatBy = "bo"

let bo:Gamepiece = Gamepiece()
bo.fingers = 5
bo.beats = "bawi"
bo.beatBy = "gawi"


bo.lose()

