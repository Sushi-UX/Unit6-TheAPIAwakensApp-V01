//
//  Person.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

struct Person: Codable {
    let name: String
    let birthYear: String?
    let gender: String?
    let height: String
    let eyeColor: String
    let hairColor: String?
    let homeworld: URL?
    let starships: [URL]?
    let vehicles: [URL]?
    let species: [URL]?
}
