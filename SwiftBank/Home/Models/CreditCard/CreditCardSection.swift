//
//  CreditCardSection.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 16/11/24.
//

import SwiftUI

struct CreditCardSection: GenericSectionView {
    
    var identifier = UUID()
    var model: CreditCardResponse
    
    func build() -> AnyView {
        return AnyView(CreditCardView(creditCardVM: model))
    }
    
    
}
