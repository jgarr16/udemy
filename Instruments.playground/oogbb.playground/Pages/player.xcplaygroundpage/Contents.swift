
// a class is a collection of state and behavior that completely describes something
// state: properties
// behavior: methods
// object: and instance of a class
//     there are three types of objects in Swift
//     1. class - classes are passed by reference
//     2. struct - structs are passed by value (known as value types)
//     3. enum (an enumerated type) - enums are passed by value (known as value types)
//
// define the Player class
//
class Player {
    // properties
    var name: String = ""
    var wins: Int = 0
    var loses: Int = 0
    var ties: Int = 0
    var plays: Int = 0
    
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


print("This player's name is \(home.name).")
print("\(home.name) has \(home.wins) wins, \(home.loses) loses, and \(home.ties) ties.")
print()
print("This player's name is \(visitor.name).")
print("\(visitor.name) has \(visitor.wins) wins, \(visitor.loses) loses, and \(visitor.ties) ties.")

