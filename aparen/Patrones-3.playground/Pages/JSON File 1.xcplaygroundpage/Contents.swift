import Foundation

struct Movie: Codable {
    let title: String
    let year: Int
    let cast: [String]
    let genres: [String]
}

let url = Bundle.main.url(forResource: "movies", withExtension: "json")!

do {
    let data = try Data(contentsOf: url)
    let movies = try JSONDecoder().decode([Movie].self, from: data)
    print(movies)
} catch {
    print(error)
}
