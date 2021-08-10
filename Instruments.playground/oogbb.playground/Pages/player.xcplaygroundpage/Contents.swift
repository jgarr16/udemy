

//
class Player {
    // properties
    var name: String = ""
    var wins: Int = 0
    var loses: Int = 0
    var ties: Int = 0
    var plays: Int = 0
    var noun: String = ""
    var result: String = ""
    
    // an initializer is like a constructor; it's used to initialize a property
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


let home: Player = Player()
home.name = "John"
let visitor: Player = Player()
visitor.name = "Kyong"


home.noun
home.win()
home.win()
visitor.win()


print("\(home.name) has \(home.wins)" + (home.wins != 1 ? " wins, " : " win, ") + "\(home.loses)" + (home.loses != 1 ? " losses, " : " loss, ") + "and \(home.ties)" + (home.ties != 1 ? " ties." : " tie."))
print("\(visitor.name) has \(visitor.wins)" + (visitor.wins != 1 ? " wins, " : " win, ") + "\(visitor.loses)" + (visitor.loses != 1 ? " losses, " : " loss, ") + "and \(visitor.ties)" + (visitor.ties != 1 ? " ties." : " tie."))

