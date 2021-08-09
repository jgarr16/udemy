

//
class Player {
    // properties
    var name: String = ""
    var wins: Int = 0
    var loses: Int = 0
    var ties: Int = 0
    var plays: Int = 0
    var noun: String = ""
    
    // an initializer is like a constructor; it's used to initialize a property
    func win() {
        wins += 1
        plural(noun:"win",count:Int("\(wins)")!)
    }
    func lose() {
        loses += 1
        plural(noun:"lose",count:Int("\(loses)")!)
    }
    func tie() {
        ties += 1
        plural(noun:"tie",count:Int("\(ties)")!)
    }
    func plural(noun: String, count: Int) -> String {
        // determine the proper singular or pluralized ending for a noun based on the number of times an event has occured
        // reference: https://www.englishgrammar101.com/module-1/nouns/lesson-3/singular-and-plural-nouns-1
        // check out this one for maturity - https://github.com/joshualat/Pluralize.swift
        if count != 1 {
            // noun.suffix(2) == 'sh' || 'ch'
            // return "\(noun)s"
            if noun == "win" {self.noun = "wins"}
            if noun == "lose" {self.noun = "loses"}
            if noun == "tie" {self.noun = "ties"}
        } else {
            self.noun = noun
//            if noun == "win" {return "win"}
//            if noun == "lose" {return "lose"}
//            if noun == "tie" {return "tie"}
        }
    }
}



let home: Player = Player()
home.name = "John"
let visitor: Player = Player()
visitor.name = "Kyong"

visitor.win()
home.lose()
visitor.tie()
home.tie()

//print("This player's name is \(home.name).")
print("\(home.name) has \(home.wins) \(home.noun), \(home.loses) loses, and \(home.ties) ties.")
print()
//print("This player's name is \(visitor.name).")
print("\(visitor.name) has \(visitor.wins) wins, \(visitor.loses) loses, and \(visitor.ties) ties.")

