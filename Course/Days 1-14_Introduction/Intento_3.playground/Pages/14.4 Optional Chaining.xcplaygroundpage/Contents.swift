//: [Previous](@previous)

import Foundation

let names: [String]? = []

let chosen = names?.randomElement()?.uppercased()
print("Next in line: \(chosen)")



struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


let names1 = ["Vincent": "van Gogh", "Pablo": "Picasso", "Claude": "Monet"]
let surnameLetter = names1["Vincent"]?.first?.uppercased()

