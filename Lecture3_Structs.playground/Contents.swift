var point = (x: 1,y: 1)

func calculatePi() -> Double {
    print("Do heavy calculations ....")
    return 3.14
}

//private, fileprivate, internal, public, open

struct Point {
    
    lazy var PI = calculatePi()
    
    //x:[-10,+10]
    var _x = 0
    var x: Int {
        set(myX) {
            if myX > 10 {
                self._x = 10
            } else if myX < -10 {
                self._x = -10
            } else {
                self._x = myX
            }
        }
        
        get {
            return _x
        }
    }
    let serialString = "SERIAL"
    var serialNumber:String {
        "my-serial-\(self.x * self.y)"
    }
    //y:[-10,+10]
    var y: Int
    
    let name: String
    
    var color: String = "white"
    
    init(color: String) {
//        self.init(x: 0, y: 0, name: "point with color", color: color)
        self._x = 0
        self.y = 0
        self.name = "origin"
        self.color = color
        x = 0
    }
    
    init(x: Int = 0, y: Int = 0, name: String = "origin", color: String) {
        self.init(x: x, y: y, name: name)
        self.color = color
    }
    
    init(x newX: Int = 0, y: Int = 0, name: String = "origin") {
        self.y = y
        if newX != 0 || y != 0 {
            self.name = "Point.init(\(newX),\(y))"
        } else {
            self.name = name
        }
        x = newX
    }
    
    func printMe() {
        print("Point: \(self.name) => [\(self.x),\(self.y)] * \(serialNumber)")
    }
    
    static func add(a:Point, b:Point) -> Point {
        a.printMe()
        b.printMe()
        return Point(x: a.x + b.x, y: a.y + b.y)
    }
    
    mutating func shiftX(by: Int) {
        x += by
    }
    
    subscript(index:Int) -> Int? {
        if index == 0 {
            return x
        }
        
        if index == 1 {
            return y
        }
        
        return nil
    }
}

func print(point myPoint: Point) {
    print("Name: \(myPoint.name) => [\(myPoint.x),\(myPoint.y)]")
}


var myPoint = Point(x: 1, y: 1)
var zero = Point(x: 0, y: 0)
zero.x += 100

var newZero = Point()
var one = Point(x:1, y:0)
var myOrigin = Point(x: 200, y:1000, name:"test") //Point(x:0, y:0, name:"test")

//print("Name: \(myPoint.name) [\(myPoint.x),\(myPoint.y)]")
//print(point: zero)
//print(point: myOrigin)
//myOrigin.printMe()

var p = Point.add(a: myPoint, b: myPoint)
p.shiftX(by: 10)
p.printMe()

let five = p[0]
print(five)
//let myPi = p.PI

var v:Vector = Vector(x: 1, y: 1, z: 1)
let b = v.add(vector: v)

