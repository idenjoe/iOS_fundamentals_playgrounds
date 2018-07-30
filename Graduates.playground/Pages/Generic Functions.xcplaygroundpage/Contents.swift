//: [Previous](@previous)

import Foundation

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("someInt is now \(someInt), and anotherInt is now \(anotherInt)")
// Prints "someInt is now 107, and anotherInt is now 3"


//GENERIC FUNCTIONS
func swapTwoValues<T>(_ a: inout T, _ b: inout T) {
    let temporaryA = a
    a = b
    b = temporaryA
}

var genericInt = 3
var anotherGenericInt = 107
swapTwoValues(&genericInt, &anotherGenericInt)
// someInt is now 107, and anotherInt is now 3
print("genericInt is now \(genericInt), and anotherGenericInt is now \(anotherGenericInt)")

var someString = "hello"
var anotherString = "world"
swapTwoValues(&someString, &anotherString)
print("someString is now \(someString), and anotherString is now \(anotherString)")

//: [Next](@next)
