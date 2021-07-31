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
//func randver(selection: Int) {
//
//    func nest(selection: Int){
//        if selection == 5 {
//            print("5")
//        }
//        if selection == 4 {
//            print("4")
//        }
//        if selection == 3 {
//            print("3")
//        }
//        if selection == 2 {
//            print("2")
//        }
//        if selection == 1 {
//            print("1")
//        }
//    }
//
//    nest(selection: selection)
//}
//
//let selection = Int.random(in: 1...5)
//randver(selection: selection)


//Don't change this code:
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.
func add(n1: Int,n2: Int) {
    let added=n1+n2
    print(added)
}
func subtract(n1: Int,n2: Int) {
    let subtracted=n1-n2
    print(subtracted)
}
func multiply(n1: Int,n2: Int) {
    let multiplied=n1*n2
    print(multiplied)
}
func divide(n1: Int,n2: Int) {
    let divided=Double(n1)/Double(n2)
    print(divided)
}


