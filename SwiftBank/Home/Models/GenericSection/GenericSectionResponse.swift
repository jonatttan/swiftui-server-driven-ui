//
//  GenericSectionResponse.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 16/11/24.
//

import Foundation

struct GenericSectionResponse: Decodable {
    
    // MARK: - Attributes
    
    private(set) var title: TextModel
    private(set) var subtitle: TextModel
    
}
