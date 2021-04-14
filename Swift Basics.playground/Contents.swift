//Data types

var type1: Int  = 2
var type2: Float  = 2.22
var type3: Double  = 2.2222
var type4: Bool  = true
var type5: String = "Swift"
var type6: Character  = "A"

let myNumber = 10

//Arithmetic operators

type1 += 2
type1 -= 2
type1 *= 2
type1 /= 1
type1 %= 2

//Logical operators

type2 == type2
type2 != type2
type2 > type2
type2 < type2
type2 >= type2
type2 <= type2
type4 && type4
type4 || type4

//If and if-else statements

var somethingIsTrue: Bool = true

if somethingIsTrue == true {
    
}

if somethingIsTrue == true {
    
} else {
    
}

//Switch statement

var checkingCases = 1

switch checkingCases {
case 1:
    print("uno")
case 2:
    print("dos")
default:
    print("nil")
}

//Arrays

var drivers = ["Leclerc", "Norris", "Vettel", "Verstappen"]

var team1 = "Ferrari"
var team2 = "McLaren"
var team3 = "RedBull"

var formula1 = [team1, team2, team3]

drivers.insert("Sainz", at: 4)
formula1.append("Alfa Romeo")
drivers.remove(at: 3)

print(drivers[2])
print(formula1[0])

//Dictionaries

var footballClubs = ["FC Barcelona":"Spain", "Arsenal":"England", "AC Milan":"Italy", "AS Monaco":"Poland"]

print(footballClubs)
footballClubs["AS Monaco"] = "France"

//For-in loops

var circuits = ["Monza", "Silverstone", "Baku", "Melbourne", "Bahrain"]

for names in circuits {
    print(names)
}

//While loops

var startValue = 1
let endValue = 10

while startValue<=endValue {
    print(startValue)
    startValue += 1
}

// Functions

func driverPoints() {
    let vettel: Int = 26
    let hamilton: Int = 18
    
    let differenceOfPoints = vettel - hamilton
    
    print("The difference between Vettel and Hamilton is \(differenceOfPoints) points")
    
}

driverPoints()

//Functions with parameters

func myPoints(race1: Int, race2: Int) {
    let sum = race1 + race2
    print("My championship points are equal to \(sum)")
}

myPoints(race1: 25, race2: 10)

func chooseMobile(iPhone model: String) {
    print("I choose iPhone \(model)")
}

chooseMobile(iPhone: "11 Pro Max")

//Functions with return values

func doubleTheInput(inputValue: Int) -> Int {
    return inputValue*2
}

let twoTimesFour = doubleTheInput(inputValue: 4)

print(twoTimesFour)
print(doubleTheInput(inputValue: 16))

//Classes

class Car {
    let horsepower: Int
    let engine: String
    var engineDiseplacement: Float
    
    init(horsepower: Int, engine: String, engineDiseplacement: Float) {
        self.horsepower = horsepower
        self.engine = engine
        self.engineDiseplacement = engineDiseplacement
    }
    
    func engineOn() {
        print("Engine turned on.")
    }
    
    func engineOff() {
        print("Engine turned off.")
    }
}

let myCar = Car(horsepower: 1000, engine: "V10", engineDiseplacement: 3.0)

print(myCar.engineDiseplacement)

myCar.engineOn()
myCar.engineOff()

//Class inheritance

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func greetings() {
        print("Hello, my name is \(firstName) \(lastName).")
    }
}

class Driver: Person {
    var driverNumber: Int
    
    init(driverNumber: Int, firstName: String, lastName: String) {
        
        self.driverNumber = driverNumber
        
        super.init(firstName: firstName, lastName: lastName)
    }
        func identity() {
            print("First name: \(firstName), Last name: \(lastName), Driver number: \(driverNumber)")
        }
    
    override func greetings() {
        print("Grazie ragazzi")
    }
}

let charles = Driver(driverNumber: 16, firstName: "Charles", lastName: "Leclerc")

charles.greetings()
charles.identity()

//Optionals

var firstOptional: Int?

firstOptional = nil
//print(firstOptional)
firstOptional = 10
//print(firstOptional)

var forceTakeValue = firstOptional!
print(forceTakeValue)

if let checkingNil = firstOptional {
    print(checkingNil)
} else {
    print("Optional contains nil!")
}

class Cat {
    
    let firstName: String
    let age: Int
    
    init(firstName: String, age: Int) {
        self.firstName = firstName
        self.age = age
    }
    
    func meow() {
        print("My cats name is \(firstName) and he is \(age) years old")
    }
}

var catOptional: Cat?

catOptional?.meow()
catOptional = Cat(firstName: "Ric", age: 10)

catOptional?.meow()

print((catOptional?.firstName)!)

if let firstName = catOptional?.firstName {
    print(firstName)
}

//Initializers

class NBA {
    var nameOfClub = ""
    
    init() {
        nameOfClub = "LA Lakers"
    }
    
    init(_ nameOfClub: String) {
        self.nameOfClub
    }
}

let myClub = NBA()
print(myClub.nameOfClub)



