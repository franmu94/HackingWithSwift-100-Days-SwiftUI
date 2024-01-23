import Foundation

let luckyNumbers = [7, 4, 38, 15, 16, 15, 12, 33, 31, 49]



let result = luckyNumbers.filter{ $0.isMultiple(of: 2) == false  }.sorted{ $0 > $1 }.map { "\($0) is a lucky number"}

for i in result { print(i)}
