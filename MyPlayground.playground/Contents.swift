// This is a comment
//print("hello world")

/* we can type all kinds of stuff in there
 everything that goes in between these delimiters
 will be considered a comment */

print("Hello \(2+3) World")

/* we can run little sub-comnmands within a text string
 - a.k.a. a string interporlation - by doing a backslash
 followed by parentheses. e.g., \(2+3) */


// variables
var a = 5
var b = 8
var c = a
a = b
b = c

print("A is \(a).")
print("B is \(b).")

// arrays
import Foundation
var friends = ["angela","jack","philipp"]
print(friends[0].capitalized)

// array exercise - I was overthinking this one.
var numbers = [45,73,195,53]

var computedNumbers = [numbers[0]*numbers[1],numbers[1]*numbers[2],numbers[2]*numbers[3],numbers[3]*numbers[0]]
print(computedNumbers)
