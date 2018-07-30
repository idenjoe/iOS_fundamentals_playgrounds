//: Playground - noun: a place where people can play

import UIKit


class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let john = Person()

//This triggers a runtime error
//let roomCount = john.residence!.numberOfRooms

if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}

func numberOfRooms(from person: Person) -> String {

    guard let roomCount = person.residence?.numberOfRooms else {
        return "Unable to retrieve the number of rooms."
    }

    return "John's residence has \(roomCount) room(s)."
}

numberOfRooms(from: john)
john.residence = Residence()
numberOfRooms(from: john)

