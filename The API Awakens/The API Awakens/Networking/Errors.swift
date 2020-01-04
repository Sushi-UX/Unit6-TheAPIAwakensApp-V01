//
//  Errors.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

enum DataError: Error {
    case badResponse
    
    var localizedDescription: String {
        switch self {
        case .badResponse:
            return "Bad response from server - please check your connection."
        }
    }
}

enum CostConversion: Error {
    case invalidInput
    case zeroOrNegativeInput
    
    var localizedDescription: String {
        switch self {
        case .invalidInput:
            return "Please enter a valid integer."
        case .zeroOrNegativeInput:
            return "Please enter a non-negative number above 0."
        }
    }
}
