//
//  PageManager.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

struct HandlePages<T: Codable>: Codable {
    let count: Int
    let next: URL?
    let previous: URL?
    let results: [T]
}
