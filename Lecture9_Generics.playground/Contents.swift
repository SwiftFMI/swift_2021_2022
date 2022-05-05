func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

func sum(_ a: Double, _ b: Double) -> Double {
    return a + b
}

func sum(_ a: String, _ b: String) -> String {
    return a + b
}

protocol Sumable {
    static func + (left: Self, right: Self) -> Self
}

extension Int : Sumable {}
extension Double : Sumable {}
extension String : Sumable {}

func sumgeneric<T: Sumable>(_ a: T, _ b: T) -> T {
    return a + b
}

print(sumgeneric(1, 2))
print(sumgeneric(1.5, 2.0))
print(sumgeneric("a", "bc"))

struct Vector: Sumable {
   var x = 10
    
    static func + (left: Vector, right: Vector) -> Vector {
        return Vector(x: left.x + right.x)
    }
}

let vX = Vector(x: 10)
let vY = Vector(x: 10)
print(sumgeneric(vX, vY))


let names: Array<String> = ["Ivan", "Gosho"]

protocol CollectionEquatable {
    associatedtype Element
    var count: Int { get }
    subscript (i:Int) -> Element { get }
}

struct List<T>: CollectionEquatable {
    private var items: [T] = []
    
    mutating func add(item: T) {
        items.append(item)
    }
    
    subscript (i:Int) -> T {
        return items[i]
    }
    
    var count: Int {
        return items.count
    }
}

var vectors = List<Vector>()
vectors.add(item: vX)
vectors.add(item: vY)

print("There are \(vectors.count) vectors.")

func isEqual<T: CollectionEquatable, U: CollectionEquatable>(left:T, right:U) -> Bool where T.Element: Equatable, U.Element == T.Element {
    if left.count == right.count {
        for i in 0..<right.count {
            if left[i] != right[i] {
                return false
            }
        }
        
        return true
    }
    
    return false
}

class Queue<Item>: CollectionEquatable {
    var items:[Item]
    
    init() {
        items = []
    }
    
    func insert(item:Item) {
       items.append(item)
    }
    
    func get() -> Item? {
        if items.count > 0 {
            return items.removeFirst()
        }
        
        return nil
    }
    
    subscript (i:Int) -> Item {
        return items[i]
    }
    
    var count:Int {
        return items.count
    }
}

extension Array : CollectionEquatable {}


var arr = [1, 2, 3]
var list = List<Int>()
list.add(item: 1)
list.add(item: 2)
list.add(item: 3)
var queue = Queue<Int>()
queue.insert(item: 1)
queue.insert(item: 2)
queue.insert(item: 3)

print("arr == list \(isEqual(left: arr, right: list))")
print("arr == queue \(isEqual(left: arr, right: queue))")
print("list == queue \(isEqual(left: list, right: queue))")
