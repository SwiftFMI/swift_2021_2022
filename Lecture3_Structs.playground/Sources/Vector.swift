import Foundation

public struct Vector {
    var x = 0
    var y = 0
    var z = 0
    
    public init(x:Int, y:Int, z:Int) {
        self.x = x
        self.y = y
        self.z = z
    }
    
    public func add(vector v: Vector) -> Vector {
        return Vector(x: self.x + v.x, y: self.y + v.x, z: self.z + v.z)
    }
}
