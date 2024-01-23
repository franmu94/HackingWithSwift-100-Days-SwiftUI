//: [Previous](@previous)

import Foundation

var quote = "   The truth is rarely pure and never simple   "

let trimed = quote.trimmingCharacters(in: .whitespacesAndNewlines)


extension String {
    func trimed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

let trimed_1 = quote.trimed()

extension String {
    mutating func trim(){
        self = self.trimed()
    }
}

quote.trim()

extension String {
    var lines: [Self] {
        self.components(separatedBy: .newlines)
    }
}


let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines[1])


struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}
// Swift provee siempre unn init por defecto
let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24)


//Si no sotros creamos uno en una extension se mantendra el de por defecto y convivira con el que hemos creado

extension Book {
    init(title: String, pagecount: Int) {
        self.title = title
        self.pageCount = pagecount
        self.readingHours = pagecount / 50
    }
}



var a = "qwerty"


print(a)


extension String {
    mutating func append(_ other: String) {
        self += other
    }
}

a.append("dddd")
