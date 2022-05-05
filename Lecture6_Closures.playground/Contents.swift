func sum(a:Int, b: Int) -> Int {
    return a + b
}


func multiply(a:Int, b: Int) -> Int {
    return a * b
}


var f: (Int, Int) -> Int = sum

//f(

//
func counter(start: Int) -> () -> Int {
    
    var myVal = start
    func increment() -> Int {
        myVal += 1
        return myVal
    }
    
    return increment
}

print("1 + 1 = \(f(1,1))")
f = multiply
print("1 * 1 = \(f(1,1))")

func filter(array: [Int], predicate: (Int) -> Bool, predicate2: (Int) -> Bool) -> [Int] {
    var r = [Int]()
    for i in array {
        if predicate(i) && predicate2(i) {
            r.append(i)
        }
    }
    return r
}

let data = [1, 2, 3, 4, 5, 6]
print(filter(array: data) { item in
    item % 2 == 0
} predicate2: { $0 % 3 == 0})


filter(array: data, predicate: { item in
    item % 2 == 0
}, predicate2: { $0 % 3 == 0})

filter(array: data, predicate: { item in
    item % 2 == 0
}) { $0 % 3 == 0}

//Swift 5.3+ //5.5
filter(array: data) { item in
    item % 2 == 0
} predicate2: { $0 % 3 == 0}



//let inc = counter(start: 0)
//for _ in 10...15 {
//    print("\(inc())")
//}

f = { a, b in
    return a + 2 * b
}

f = { a, b in
    a + 2 * b
}

f = {
    return $0 + 2 * $1
}

f = { $0 + 2 * $1 }

print("1 + 2 * 1 = \(f(1,1))")

let names = ["Иван", "Георги", "Петър"]
print(names.sorted(by: { a, b in
    a < b
}))
print(names.sorted(by: { $0 < $1 }))
print(names.sorted(by: <))


let sorted1 = names.sorted(by: { $0 < $1 })
let sorted2 = names.sorted() { $0 < $1 }
let sorted3 = names.sorted { $0 < $1 }

var handlers: [ () -> ()] = []

func addHandler(handler: @escaping () -> ()) {
//    handler()
    handlers.append(handler)
}

addHandler {
    print( "Invoke later")
}

let p: () -> Void = { print("Evaluate now")}
p()
addHandler(handler: p)

print("A litte bit later ...")

for h in handlers {
    h()
}


func funcAutoclosure(pred: @autoclosure @escaping () -> Bool) {
    if pred() {
        print("It's true")
    } else {
        print("It's НОТ true")
    }
}

funcAutoclosure(pred: 11 > 12)
//funcAutoclosure(pred: { () -> Bool in return 2 > 1}())

//допълнителен пример
func funcAutoclosureComplex(pred: @autoclosure () -> ()) {
    print("body of \(#function)")
}


func funcAutoclosureComplexVoid(pred:()) {
    print("body of \(#function)")
}

funcAutoclosureComplex(pred: print("the function is wrapped in a closure and it's never called."))

funcAutoclosureComplexVoid(pred: print("the function print() is called"))

