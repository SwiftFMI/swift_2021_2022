enum Color {
    case white, red
    case blue, grey
}

enum Binary: Int {
    typealias RawValue = Int
    case zero = 0
    case one
}

extension Int {
    static var grey = 0xC8C8C8
}

let x = Int.grey

let myColor: Color = Color.white
let whiteColor: Color = .white
let greyColor = Color.white

//if myColor == .red {
//    print("Червено")
//} else {
//    print("Не е червено!")
//}
//
//switch greyColor {
//case .red:
//        print("red")
//case .white:
//        print("white")
//    default:
//        print("something new")
//}


//print(myColor)

let b = Binary(rawValue: 1)

print(b ?? "?")
print(b?.rawValue)


enum Greetings: String {
    case hello = "Hello!"
    case hi = "Hi!"
    case welcome = "Welcome"
    case hiFive = "👋"
}


var greeting = Greetings.hiFive

print(greeting.rawValue)


enum Character {
  enum Weapon {
    case bow
    case sword
    case spear
    case dagger
  }
  
  enum Helmet {
    case leather
    case wooden
    case iron
  }
  
  case thief
  case warrior
  case knight
}

var weapon = Character.Weapon.spear
weapon = .sword


//func strength(of character: Character,
//     with weapon: Character.Weapon,
//     and armor: Character.Helmet) -> Int {
//
//     return 9001
//}
//
//// You can still call it like this:
//strength(of: .thief, with: .bow, and: .leather)


enum Trade {
    case buy
    case sell
}

func executeTrade(_ tradeType: Trade, stock: String, amount: Int) {
    //TBD
}

enum Trade2 {
    case noAction(total: Int)
    case buy(total:Int, stock: String, amount: Int)
    case sell(total: Int, stock: String, amount: Int)
    
    var description: String {
        switch self {
        case .noAction(let amount):
            return "Total amunt \(amount)."
        case .buy(_, let stock, _):
            return "Buy \(stock)."
        case .sell(_, let stock, _):
            return "Sell \(stock)."
        }
    }
}

extension Trade2 {
    func execute() -> Trade2 {
        switch self {
        case .buy(let total, _, let amount):
            return .noAction(total: total - amount)
        case .sell(let total, _, let amount):
            return .noAction(total: total + amount)
        case .noAction(_):
            return self
        }
    }
}

func executeTrade(_ trade: Trade2) {
    //TBD
}

var trade = Trade2.buy(total: 1000, stock: "AAPL", amount: 500)


print(trade.execute())

if case Trade2.buy(let total, let stock, let amount) = trade.execute() {
    print("Buy \(amount) from \(stock).")
}


//switch trade {
//case .buy(let stock, _):
//    print("Buy \(stock).")
//case .sell(let stock, _):
//    print("Sell \(stock).")
//}
print(trade.description)

enum File {
  case file(name: String)
  indirect case folder(name: String, files: [File])
}

//(1 + 2) = Exprepression.sum(.number(1), .number(2))

enum Expression {
    case number(value: Double)
    indirect case multiplu(l: Expression, r: Expression)
    indirect case sum(l: Expression, r: Expression)
}
