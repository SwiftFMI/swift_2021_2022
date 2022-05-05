class Car {
    var name: String

    init(name:String) {
        self.name = name
        print("Initalize a car instance with name: \(name)")
    }

    deinit {
        print("Deinit a car instance with name \(self.name) ")
    }
}

var tesla:Car? = Car(name: "Tesla") //1
//var refCar = tesla //2
tesla = nil // 0

var myA = Car(name: "Tesla A 1.0") // 0
var myB = Car(name: "Tesla B 1.0")


let f: () -> () = { [unowned myA] in
    print("A = \(myA.name ?? "???")")
    print("B = \(String(describing: myB.name))")
}


myA = Car(name: "Tesla A 2.0")

//myA.name = "Tesla A 2.0"
myB.name = "Tesla B 2.0"

f()


var myIntA = 0
var myIntB = 0

let f2: () -> () = { [myIntA, myIntB] in
    print("A = \(myIntA)")
    print("B = \(myIntB)")
}

myIntA = 7
myIntB = 7

f2()


class Book {
    let title: String
    let author: Author
    var genre: String?
    var pages = 0
    
    init(title: String, author: Author) {
        self.title = title
        self.author = author
        print("Create a book.")
    }
    
    deinit {
        print("Deinit a book instance with title \(self.title) ")
    }
}

class Author {
    let name: String
    //трябва да добавим weak пред пропъртито, за да
    //можем да прекъснем цикъла
    //weak var book:Book?
    weak var book: Book?
    var age: Int
    var isAlive: Bool
    
    init(name:String, age:Int, isAlive:Bool) {
        self.name = name
        self.age = age
        self.isAlive = isAlive
        print("Create an author.")
    }
    
    deinit {
        print("Deinit an Author instance with name \(self.name) ")
    }
}


var author: Author? = Author(name: "Достоевски", age: 73, isAlive: false)

var book: Book? = Book(title: "53", author:author! )

author?.book = book

//author = nil
book = nil

let c: () -> () = {
    print("Hello \(book?.title)")
}

c()



func guardExample(author: Author?) {
//    if let author = author {
//        print("Author name is \(author.name)")
//    }
    defer {
        print("exit")
    }
    
    guard let author = author else {
        //author is nil
        return
    }
    ///
    
    print("Author name is \(author.name)")
}


guardExample(author: nil)


//guard
//defer
