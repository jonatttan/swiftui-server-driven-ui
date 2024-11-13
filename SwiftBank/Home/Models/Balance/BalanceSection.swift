//
//  BalanceSection.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 12/11/24.
//

import SwiftUI

struct BalanceSection: GenericSectionView {
    
    var identifier: UUID = UUID()
    var model: BalanceResponse
    
    func build() -> AnyView {
        return AnyView(BalanceView(balanceResponse: model))
    }
}
