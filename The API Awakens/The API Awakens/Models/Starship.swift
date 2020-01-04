//
//  Starship.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

struct Starship: Transportation, Codable {
    let name: String
    let model: String
    let costInCredits: String
    let length: String
    let starshipClass: String
    let crew: String
}
