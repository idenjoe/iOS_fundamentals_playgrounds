//: [Previous](@previous)

import Foundation

enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west
directionToHead = .east
var anotherDirectionToHead : CompassPoint = .north


switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}

enum Beverage: CaseIterable {
    case coffee, tea, juice
}

let numberOfChoices = Beverage.allCases.count
print("\(numberOfChoices) beverages available")
let caseList = Beverage.allCases
    .map({ "\($0)" })
    .joined(separator: ", ")


// Associated values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 85909, 51226, 3)


switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}


productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
// If all associated values to an enum are defined as constants or variables you can define the case as let or var directly
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}

// Raw Values
enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}

enum Planet: Int, CaseIterable {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let planetList = Planet.allCases
    .map({ "\($0.rawValue)" })
    .joined(separator: ", ")

enum CompassPoint2: String, CaseIterable {
    case north = "Norte", south, east, west
}

let compasPointList = CompassPoint2.allCases
    .map({ "\($0.rawValue)" })
    .joined(separator: ", ")

// Initializing from a rawValue
let earth = Planet(rawValue: 3)
let mercury = Planet(rawValue: 1)
let point = CompassPoint2(rawValue: "south")

//: [Next](@next)
