import UIKit
import Foundation

let fruits: Array = ["Apple", "Pear", "Orange"] // Set da order tartibsiz boladi randomga oxshash
let contacts = ["Adam": 123456789, "James": 987654321, "Amy": 912837365] // List
let word = "supercalifragilisticexoualidocious"
let halfOpenRange = 1..<5
let closeRange = 1...5

//for fruit in fruits {
//    print(fruit)
//}

//for person in contacts {
//    print(person.value)
//}

//for letter in word {
//    print(letter)
//}

//for number in halfOpenRange {
//    print(number)
//}

//for _ in halfOpenRange {
//    print("Loop is running")
//}

//for number in closeRange {
//    print(number)
//}


//var now = Date().timeIntervalSince1970
//let oneSecondFromNow = now + 1
//
//while now < oneSecondFromNow {
//    print("waiting...")
//}


//Loops Coding Exercise
//The Fibonacci sequence is a series of numbers that is created by adding the 2 previous numbers.
//
//e.g. 0, 1, 1, 2, 3, 5, 8, 13, 21, 34 ...
//
//The first 2 numbers are always 0 and 1.
//
//The 3rd number is calculated like so:
//
//0 + 1 = 1
//
//The 4th number is calculated like so:
//
//1 + 1 = 2
//
//etc.
//
//Create a function that prints out the Fibonacci sequence as an array for the specified number of digits.
//
//e.g. Calling fibonacci(n: 5) should print:
//
//[0, 1, 1, 2, 3]
//
//But calling fibonacci(n: 10) should print:
//
//[0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
//
//To test your code, copy the function into a Swift Playground


class Assignment {
    
    
    func fibonacci(n: Int) {
    
    //Write your code here.
        var numbers = [0]
        var next = 1
        for _ in 1..<n {
            let result = numbers.last! + next
            numbers.append(next)
            next = result
        }
        print(numbers)
    
    }
    
    
}

let test = Assignment()
test.fibonacci(n: 10)
