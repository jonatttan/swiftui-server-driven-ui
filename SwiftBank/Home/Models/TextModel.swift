//
//  TextModel.swift
//  SwiftBank
//
//  Created by ALURA on 23/02/24.
//

import Foundation

struct TextModel: Decodable {
    
    private enum CodingKeys: String, CodingKey {
        case text
        case fontSize = "font_size"
        case color
    }
    
    private(set) var text: String
    private(set) var fontSize: Int
    private(set) var color: String
}
