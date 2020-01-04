//
//  Transportation.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

protocol Transportation {
    var name: String { get }
    var model: String { get }
    var costInCredits: String { get }
    var length: String { get }
    var crew: String { get }
}
