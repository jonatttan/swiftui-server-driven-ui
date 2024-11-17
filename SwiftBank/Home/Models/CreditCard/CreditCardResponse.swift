//
//  CreditCardResponse.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 16/11/24.
//

import Foundation

struct CreditCardResponse: Decodable {
    
    // MARK: - Attributes
    
    private(set) var title: TextModel
    private(set) var icon: String
    private(set) var subtitle: TextModel
    private(set) var value: TextModel
    private(set) var dueDate: TextModel
    
    private enum CodingKeys: String, CodingKey {
        case title, icon, subtitle, value
        case dueDate = "due_date"
    }
    
}
