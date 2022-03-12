//var hello = "Hello"
//hello += " world!"
//
//print(hello)
//
//let condition = true
//if condition {
//
//}
//
//var x: Int? = nil
//if let x = x {
//    print("X = \(x)")
//}


//декларация и дефиниция
func functionName() {
    print("Action 1")
    print("Action 2")
    print("Action 3")
}
//употреба
functionName()



///
///
///
func f1(labelName parameter1: String) -> String {
    return "f1 \(parameter1)"
}

//func f1NoLabel(parameter1: String) -> String {
func f1NoLabel(parameter1 parameter1: String = "") -> String {
    return "f1NoLabel \(parameter1)"
}

f1NoLabel()

let result1 = f1(labelName: "Hello")
let result2 = f1NoLabel(parameter1: "Hello")
print(result1)

create(fileWithName: "hello", andExtension: "swift")


func createfileWithNameAndExtension(_ fileName: String, _ ext: String) -> Bool {
    print("File: \(fileName).\(ext) was created!")
    return true
}

func create(fileWithName fileName: String, andExtension ext: String) -> Bool {
    print("File: \(fileName).\(ext) was created!")
    return true
}

func create(fileWithName fileName: String, andExtension ext: Int) -> String {
    print("[Int] File: \(fileName).\(ext) was created!")
    return "true"
}

func create(fileWithName fileName: String, andExtension ext: Double) -> String {

    print("[Double] File: \(fileName).\(ext) was created!")
    return "true"
}

let x = create(fileWithName: "hello", andExtension: 2.0)

createfileWithNameAndExtension("hello", "swift")


func noParametersNoResult() {
    //TODO: implement ...
    return
}

func withParametersNoResult(file: String, date: String) -> Void {
    
}

func noParametersNoResult3() -> () {
    
}

withParametersNoResult(file: "File.swift", date: "08-03-2022")

let point = (x:1, y:1)
print(point)


func maxItem(inArray numbers: [Int]) -> (item:Int, index:Int) {
    var index = -1
    var max = Int.min
    
    for (i, value) in numbers.enumerated() {
        if max < value {
            max = value
            index = i
        }
    }
    
    return (item: max, index: index)
}

func updatePrice(_ x: inout Int, newPrice: Int) {
    x = newPrice
}

var macMini = 1000
print("Mac mini costs \(macMini).")
updatePrice(&macMini, newPrice: 900)
print("Mac mini costs \(macMini).")

let pair = maxItem(inArray: [1, 3, 6, 2, 10])
print(pair)


//prefix !, -, +
//postfix ?, !
//infix a + b
//condition ? true : false
//nilable ?? value
var a = 5
a += 5

infix operator *^^

func *^^ (left: String, right: Int) -> String {
    if right <= 0 {
        return ""
    }
    var result = left
    for _ in 1..<right {
        result += left
    }
    
    return result
}

let r = "hi" *^^ 3
print(r)


let val = (3 * 2) + 4
//+=
print(val)
