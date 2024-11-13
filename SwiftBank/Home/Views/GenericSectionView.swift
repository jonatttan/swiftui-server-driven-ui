//
//  GenericSectionView.swift
//  SwiftBank
//
//  Created by Jonattan Sousa on 12/11/24.
//

import SwiftUI

protocol GenericSectionView {
    var identifier: UUID { get set}
    func build() -> AnyView
}
