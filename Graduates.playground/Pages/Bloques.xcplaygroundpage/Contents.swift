//: [Previous](@previous)

import Foundation

func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
hasAnyMatches(list: numbers, condition: lessThanTen)

hasAnyMatches(list: numbers) { (number: Int) -> Bool in
    return number >= 20
}

//: [Next](@next)
