//
//  SectionModel.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 07/11/24.
//

import Foundation

enum SectionType: String, Decodable {
    case balance
    case creditCard = "credit_card"
    case loan
}

struct SectionModel: Decodable {
    
    // MARK: - Attributes
    private(set) var id: String
    private(set) var type: SectionType
    private(set) var content: [String: Any]
    
    // MARK: - Init
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(SectionType.self, forKey: .type)
        self.content = try container.decode(DictionaryDecodable.self, forKey: .content).value as! [String: Any]
    }
    
}

private enum CodingKeys: CodingKey {
    case id
    case type
    case content
}
