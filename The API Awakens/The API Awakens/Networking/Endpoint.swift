//
//  Endpoint.swift
//  The API Awakens
//
//  Created by Raymond Choy on 1/3/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

enum Endpoint {
    case people
    case starships
    case vehicles
    
    private var baseURL: URL {
        return URL(string: "https://swapi.co/api/")!
    }
    
    // generate endpoint based on type
    func url(with page: Int) -> URL {
        switch self {
        case .people:
            var components = URLComponents(url: baseURL.appendingPathComponent("people"), resolvingAgainstBaseURL: false)
            components!.queryItems = [URLQueryItem(name: "page", value: "\(page)")]
            return components!.url!
        case .starships:
            var components = URLComponents(url: baseURL.appendingPathComponent("starships"), resolvingAgainstBaseURL: false)
            components!.queryItems = [URLQueryItem(name: "page", value: "\(page)")]
            return components!.url!
        case .vehicles:
            var components = URLComponents(url: baseURL.appendingPathComponent("vehicles"), resolvingAgainstBaseURL: false)
            components!.queryItems = [URLQueryItem(name: "page", value: "\(page)")]
            return components!.url!
        }
    }
}

