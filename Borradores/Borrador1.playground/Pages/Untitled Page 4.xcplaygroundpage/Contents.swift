//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

var arr = ["🗿", "🦎", "🖖", "✂️", "📄"]

//"🗿" -> "🦎", "✂️"
//"🦎" -> "🖖", "📄"
//"🖖" -> "✂️", "🗿"
//"✂️" -> "📄", "🦎"
//"📄" -> "🗿", "🖖"


var a = arr.firstIndex(of: "🗿")
let index = arr[arr.index(3, offsetBy: 1) % 5]
