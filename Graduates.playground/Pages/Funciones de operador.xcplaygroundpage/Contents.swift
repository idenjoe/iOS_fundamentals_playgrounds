//: [Previous](@previous)

import Foundation

// Operator overloading
let array = [1,2]
let anotherArray = [3,4]
let combinedArrays = array + anotherArray

//func + (left: [Int], right: [Int]) -> [Int] {
//    var sum = [Int]()
//    assert(left.count == right.count, "vector of same length only")
//    for (index, _) in left.enumerated() {
//        sum.append(left[index] + right[index])
//    }
//    return sum
//}


// Add support for another types
struct Vector2D {
    var x = 0.0, y = 0.0
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}

let vector = Vector2D(x: 3.0, y: 1.0)
let anotherVector = Vector2D(x: 2.0, y: 3.0)
let combinedVector = vector + anotherVector

//: [Next](@next)
