var helloworld = "Hello Wolrd!"
//print(helloworld)

let text: String = "My text"
var sum: Int = 100

sum += 1
//Bool, Int, Double(Float), String
var integerNumber: Int = 1 // Int
var `default` = "test "
//let променлива = 123 //не е хубаво
let floatNumber = 123.3 // Double
let isTrue = true //Bool

var isFalse = !isTrue
isFalse = true || isFalse // &&, ^
//isFalse = false
integerNumber = integerNumber + 1
integerNumber += 1 //-=

var message: String = "Hello " + "world!"
let name = "John"
var greeting = "Hello \(name)!"

let myNumberAsString = "123.3"
var myNumber: Double? = Double(myNumberAsString) //nil

var numberOneV2: Int? = 1
let numberOne: Int? = Optional.none //nil
let realTwo = numberOne ?? 2

var numberOneV3: Int! = 6

print(numberOneV2)
print(numberOneV3)

if numberOneV3 > 3 {
    print("test")
}


//let five: Int = numberOneV2 > 2 ? -5 : 5
//if numberOneV2! > 2 {
//    five = -5
//} else {
//    five = 5
//}

//Array
let array = [1, 2, 3]//тип [Int] == Array<Int>
var names = ["Ivan", "Joro"]
let range = 1...5
var myIndex = 0
for name in names {
    print("My item with index \(myIndex) \(name) ")
    myIndex += 1
}

names[0] = "Mitko"


//Dictionary
let dict = ["key1": 120, "key2": 150]//[String : Int] == Dictionary<String, Int>
let value = dict["key1"]

for (key, value) in dict {
    print("\(key) - \(value)")
}

var shouldExecute = !true
var times = 3
while shouldExecute {
    if times == 2 {
        times -= 1
        continue
    }
    print("\(times) Hello!!!!")
    if times == 0 {
        shouldExecute = false
    } else {

    }
    times -= 1
}

repeat {
    print("\(times) Hello!!!!")
    if times == 0 {
        shouldExecute = false
    } else {

    }
    times -= 1
} while shouldExecute


let count = 7
let things = "компютри"

switch count {
case 0:
    print("николко")
case 1..<3:
    print("най-много 3")
case 4...7: //[4,8) == 4...7
    print("най-много 7")
case 8:
    print("точно 8")
default:
    print("много")
}

let point = (1, 1, 7)
switch point {
case let (x, y, z):
    print("My point [\(x),\(y),\(z)]")
case (1,1, _):
    print("My point \(point), \(point.2)")
case (1,1, -2...5): //[-2, 5]
    print("My point \(point)!")
default:
    print("Some point, somewhere.")
}


var initialValue = 3
var product = initialValue * 8


let realOne = numberOne ?? 2

print("Number one: \(realOne)")

if numberOne == numberOneV2 { //!, ||, &&, ==, !=
    print("Двете нямат стойност (и са еднакви)!")
} else if numberOne != nil {
    print("Двете са различни!")
} else {
    
}

let myBool = true

switch myBool {
    case true:
        print("TRUE")
    break
    case false:
        print("!TRUE")

}


switch realOne {

    case 100:
        print("Сто!")
        break
case 1, 2:
    print("one or two")
default:
    print("something else")
}

if let one = numberOneV2 {
    print("Едно \(one)")
}

print("My message:\n \(message + "!!")")
print("My greeting:\n \(greeting)")
print(type(of: floatNumber))
print(type(of: integerNumber))

if let myNumber = myNumber {
    print(myNumber)
}


print(myNumber)
