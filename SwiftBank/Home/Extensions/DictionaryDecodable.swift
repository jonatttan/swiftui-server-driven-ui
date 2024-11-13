//
//  DictionaryDecodable.swift
//  SwiftBank
//
//  Created by Alura on 17/02/24.
//

import Foundation

enum DecodingError: Error {
    case dataCorruptedError
}

struct DictionaryDecodable: Decodable {
    
    var value: Any
    
    private struct CodingKeys: CodingKey {
        var stringValue: String
        init?(stringValue: String) {
            self.stringValue = stringValue
        }
        
        var intValue: Int?
        init?(intValue: Int) {
            self.stringValue = "\(intValue)"
            self.intValue = intValue
        }
    }
    
    init(from decoder: Decoder) throws {
        if let container = try? decoder.container(keyedBy: CodingKeys.self) {
            var result = [String: Any]()
            for key in container.allKeys {
                result[key.stringValue] = try container.decode(DictionaryDecodable.self, forKey: key).value
            }
            value = result
        } else if let container = try? decoder.singleValueContainer() {
            if let stringValue = try? container.decode(String.self) {
                value = stringValue
            } else if let intValue = try? container.decode(Int.self) {
                value = intValue
            } else if let boolValue = try? container.decode(Bool.self) {
                value = boolValue
            } else if let arrayValue = try? container.decode([DictionaryDecodable].self) {
                value = arrayValue.map { $0.value }
            } else {
                throw DecodingError.dataCorruptedError
            }
        } else {
            throw DecodingError.dataCorruptedError
        }
    }
}

extension Dictionary {
    func decode<T: Decodable>() -> T? {
        guard let data = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
}
