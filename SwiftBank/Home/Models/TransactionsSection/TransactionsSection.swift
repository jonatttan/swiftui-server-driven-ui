//
//  TransactionsSection.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 17/11/24.
//

import SwiftUI

struct TransactionsSection: GenericSectionView {
    
    var identifier = UUID()
    var model: TransactionsSectionResponse
    
    func build() -> AnyView {
        return AnyView(ActivitiesView(transactionsResponse: model))
    }
    
    
}
