//: [Previous](@previous)

import Foundation

// Generic types

struct IntStack {
    var items = [Int]()
    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }
}

struct Stack<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")
stackOfStrings.push("cuatro")
// the stack now contains 4 strings

var stackOfInts = Stack<Int>()
stackOfInts.push(1)
stackOfInts.push(2)
stackOfInts.push(3)
stackOfInts.push(4)
// the stack now contains 4 Ints

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
}

var stackOfPersons = Stack<Person>()
stackOfPersons.push(Person(name: "Jose"))
stackOfPersons.push(Person(name: "Pepe"))
stackOfPersons.push(Person(name: "Maria"))
stackOfPersons.pop().name
stackOfPersons.pop().name


// Extending Generic Types
extension Stack {
    var topItem: Element? {
        return items.isEmpty ? nil : items[items.count - 1]
    }
}

stackOfPersons.topItem?.name
stackOfPersons.topItem?.name
stackOfPersons.pop().name
stackOfPersons.topItem?.name

//: [Next](@next)
