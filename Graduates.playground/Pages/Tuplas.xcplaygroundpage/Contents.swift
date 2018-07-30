//: [Previous](@previous)

import Foundation

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The Status code is: \(statusCode)")

let (justTheStatusCode, _) = http404Error
print("The Status code is: \(justTheStatusCode)")

print("The Status code is: \(http404Error.0)")

//: [Next](@next)
