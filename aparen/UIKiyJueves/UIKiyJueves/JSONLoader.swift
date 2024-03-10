//
//  JSONLoader.swift
//  UIKiyJueves
//
//  Created by Fran Malo on 10/3/24.
//

import Foundation


protocol JSONLoader {
    func getJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable
}

extension JSONLoader {
    func getJSON<JSON>(url: URL, type: JSON.Type) throws -> JSON where JSON: Codable {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(type, from: data)
    }
}
