//
//  HomeEndpoint.swift
//  SwiftBank
//
//  Created by Ândriu F Coelho on 03/01/24.
//

import Foundation

enum HomeEndpoint {
    case get
}

extension HomeEndpoint: Endpoint {
    var path: String {
        switch self {
        case .get:
            return "/home"
        }
    }
    
    var method: RequestMethod {
        switch self {
        case .get:
            return .get
        }
    }
    
    var header: [String : String]? {
        switch self {
        case .get:
            return nil
        }
    }
    
    var body: [String : String]? {
        switch self {
        case .get:
            return nil
        }
    }
}
