protocol Update {
    mutating func adjust(x: Int)
}

struct Point {
    let p: P
    var x: Int
    var y: Int
}

extension Point: Update {
    mutating func adjust(x: Int) {
//        self.p.adjust(x: x)
        self.x = x
    }
}

class P {
    var x: Int = 0
    var y: Int = 0
}

extension P: Update {
    func adjust(x: Int) {
        self.x = x
    }
}

