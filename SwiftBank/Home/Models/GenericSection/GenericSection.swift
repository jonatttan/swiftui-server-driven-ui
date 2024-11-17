//
//  GenericSection.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 16/11/24.
//

import SwiftUI

struct GenericSection: GenericSectionView {
    
    var identifier = UUID()
    var model: GenericSectionResponse
    
    func build() -> AnyView {
        return AnyView(GenericView(genericResponse: model))
    }
    
    
}
