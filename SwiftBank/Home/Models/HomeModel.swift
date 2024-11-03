//
//  HomeModel.swift
//  SwiftBank
//
//  Created by ALURA on 23/02/24.
//

import Foundation

class HomeModel: NSObject, Decodable {
    
    private(set) var header: Header
    
    struct Header: Decodable {
        var title: TextModel
    }
}
