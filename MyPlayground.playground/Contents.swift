// This is a comment
//print("hello world")

/* we can type all kinds of stuff in there
 everything that goes in between these delimiters
 will be considered a comment */

//print("Hello \(2+3) World")

/* we can run little sub-comnmands within a text string
 - a.k.a. a string interporlation - by doing a backslash
 followed by parentheses. e.g., \(2+3) */


// variables
//var a = 5
//var b = 8
//var c = a
//a = b
//b = c

//print("A is \(a).")
//print("B is \(b).")

// arrays
//import Foundation
//var friends = ["angela","jack","philipp"]
//print(friends[0].capitalized)

// array exercise - I was overthinking this one.
//var numbers = [45,73,195,53]

//var computedNumbers = [numbers[0]*numbers[1],numbers[1]*numbers[2],numbers[2]*numbers[3],numbers[3]*numbers[0]]
//print(computedNumbers)

//func exercise() {
//    let letterArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//    let a = letterArray[Int.random(in: 0...25)]
//    let b = letterArray[Int.random(in: 0...25)]
//    let c = letterArray[Int.random(in: 0...25)]
//    let d = letterArray[Int.random(in: 0...25)]
//    let e = letterArray[Int.random(in: 0...25)]
//    let f = letterArray[Int.random(in: 0...25)]
//    let password = "\(a)\(b)\(c)\(d)\(e)\(f)"
//    print(password)
//}
//
//exercise()

//var multi = """
//    this is a multiline variable
//    let's see what it does
//    but not on the last line
//    """
//
//print(multi)

//
//func nested(name: String,version: Int) {
//
//    print(version)
//    print(name)
//    if version == 2 {
//        print(version)
//        print(name)
//        nest2(name)
//    }
//    if version == 3 {
//        print(version)
//        print(name)
//        nest3(name)
//    }
//    if version == 4 {
//        print(version)
//        print(name)
//        nest4(name)
//    }
//    
//    func nest2(name: String){
//        print("\(name)'s second tier")
//    }
//    func nest3(name: String){
//        print("\(name)'s third tier")
//    }
//    func nest4(name: String){
//        print("\(name)'s fourth tier")
//    }
//    
//
//}
//
//nested(name:"John", version: Int.random(in: 2...4))


let names = ["Zoey", "Chloe", "Amani", "Amaia"]
let randomName = names.randomElement()!

