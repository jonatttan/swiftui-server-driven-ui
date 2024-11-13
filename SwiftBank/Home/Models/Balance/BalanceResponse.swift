//
//  BalanceResponse.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 11/11/24.
//

import Foundation

struct BalanceResponse: Decodable {
    private(set) var amount: Amount
    private(set) var items: [BalanceItem]
    
    struct Amount: Decodable {
        private(set) var currencySymbol: String
        private(set) var value: TextModel
        
        private enum CodingKeys: String, CodingKey {
            case currencySymbol = "currency_symbol"
            case value
        }
    }
    
    struct BalanceItem: Decodable {
        private(set) var id: String
        private(set) var title: TextModel
        private(set) var icon: String
    }
}
