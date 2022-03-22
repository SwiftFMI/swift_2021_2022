// Класове

class Media {
    var name: String = ""
    var sizeInBytes: Double = 0.0
    let constValue = 1
}

//struct PersonS {
//    var name: String
//}

//let ps = PersonS(

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Student: Person {
    var fn: String
    init(fn: String, name: String) {
        self.fn = fn
        super.init(name: name)
        
    }
}


//var movie = Media()
//movie.name = "X-Men"
//print("Media name: \(movie.name)")
////movie.constValue = 4
//
//var ref = movie //
//print("Media ref name: \(ref.name)")
//movie.name = "X-Men 2"
//print("Media ref name: \(ref.name)")

enum Color {
    case pink
    case green
    case black
    case blue
    case white
    case noColor
}


protocol Printable {
    func shortDescription() -> String
    static func myPrint() -> String
}

protocol Translatable {
    var language: String {set get}
    init(language:String)
}

class Show: Translatable {
    static var counter = 0
    var name: String
    var color: Color
    var country: String
    var language: String
    var duration: Double
        
    init() {
        print("[Show] Called: \(#function)" )
        self.name = " no name "
        color = .noColor
        self.country = "no country"
        language = "BG"
        duration = 0.0
        Show.counter += 1
    }
    
    init(name: String, color: Color, country: String, language: String, duration: Double) {
        self.name = name;
        self.color = color;
        self.country = country;
        self.language = language;
        self.duration = duration;
        
    }
    
    required init(language: String) {
        self.name = "name";
        self.color = .blue;
        self.country = "country";
        self.language = language;
        self.duration = 0.0;
    }
    
    convenience init(name: String) {
        self.init(name: name, color: .blue, country: "", language: "", duration: 0.0)
    }
    
    var durationInMinutes:String {
        let minutes:Int = Int(duration)
        let minutesInHour = 60
        return "\(minutes / minutesInHour) : \(minutes % minutesInHour) min"
    }
    
    func shortDescription() -> String {
        print("[Show] Called: \(#function)" )
        return "\(name) - \(language) :  Duration: \(durationInMinutes)"
    }
    
    static func myPrint() -> String {
        print("hi!")
        return ""
    }
    
    deinit {
        print("deinit \(#function)" )
    }
}

let s = Show()
    s.shortDescription()


//
//class TVShow : Show, Translatable {
//    var series: Int
//
//    override init() {
//        series = 0
//        //извиква конструиращия метод на бащиния клас
//        super.init()
//    }
//
//    init(name:String) {
//        print("[TVShow] Called: \(#function)" )
//        series = 0
//        //извиква конструиращия метод на бащиния клас
//        super.init()
//        super.name = name
//    }
//
//    var isTurkish:Bool {
//        return self.language == "TR" && self.series > 100
//    }
//
//    override func shortDescription() -> String {
//        print("[TVShow] Called: \(#function)" )
//        return super.shortDescription() + " v.2"
//    }
//
//    func shortDescription(withPrefix: String) -> String {
//        print("[TVShow] Called: \(#function)" )
//        return super.shortDescription() + " v.2"
//    }
//
//    deinit {
//        print("deinit TVShow" )
//    }
//}
//
//
//var blackSails:TVShow = TVShow(name: "Balck Sails")
//print(blackSails.shortDescription())
////създаваме нов обект и старият бива деинициализиран
////blackSails = TVShow()
////
//var show: Show! = Show()//blackSails //(TVShow)
//print(show.shortDescription())
//
////Show.counter = 7
//print("All shows are \(Show.counter).")
