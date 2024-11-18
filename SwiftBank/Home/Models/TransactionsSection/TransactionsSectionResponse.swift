//
//  TransactionsSectionResponse.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 17/11/24.
//

import Foundation

struct TransactionsSectionResponse: Decodable {
    
    // MARK: - Attributes
    
    private(set) var title: TextModel
    private(set) var items: [TransactionItem]
    
    struct TransactionItem: Decodable {
        private(set) var identifier: Int
        private(set) var icon: String
        private(set) var title: TextModel
        private(set) var value: TextModel
    }
}
