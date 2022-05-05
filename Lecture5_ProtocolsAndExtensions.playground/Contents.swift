// TODO:
// да сменя крайната дата Крайният срок за качване на решенията е 07.05.2020!
// да сменя  $ е крайната позиция с  * е крайната позиция

protocol Planar {
    var x: Int {get}
    var y: Int {get}
}

protocol Printable : Planar {
    func printMe()
}

protocol ClassName : AnyObject {
    func printMyClassName()
}

struct Point : Printable {
    func printMe() {
        print("Point(\(x), \(y))")
    }
    
    var x: Int
    var y: Int
    
    
}

class Vector  {
    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
    
    var x: Int
    var y: Int
}

extension Vector : Printable {
    func printMe() {
        print("Vector(\(x), \(y))")
    }
}

extension Vector {
    func add(vector: Vector) -> Vector {
        return Vector(x: self.x + vector.x, y: self.y + vector.y)
    }
}

extension Vector: ClassName {
    func printMyClassName() {
        print("ClassName = Vector")
    }
}

func areEqual(_ lhs: Vector, _ rhs: Vector) -> Bool {
    return lhs.x == rhs.x && lhs.y == rhs.y
}

extension Vector: Equatable {
    static func == (lhs: Vector, rhs: Vector) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    
    static func != (lhs: Vector, rhs: Vector) -> Bool {
        return lhs.x != rhs.x
    }
}

let point2D = Point(x: 0, y: 100)
//point2D.printMe()

let v = Vector(x: 10, y: 10)
let z = Vector(x: 10, y: 100)

if !(z != v) {
    print("They are the same vector.")
}

var printableInstance: Printable = v
printableInstance.printMe()



printableInstance = point2D
printableInstance.printMe()

var planarInstance: Planar = Vector(x: 100, y: 100)
print("Vector's X = \(planarInstance.x)")

v.printMyClassName()
let x = v.add(vector: v)
x.printMe()


extension Int {
    func printBGN() {
        print("\(self) лв")
    }
    
    func square() -> Int {
        return self * self
    }
    
    static var version: String {
        return "123.23"
    }
    
    var toDouble: Double {
        Double(self)
    }
}


let one = 1
one.printBGN()

10.square().printBGN()
print(Int.version)

type(of: 10.toDouble)
