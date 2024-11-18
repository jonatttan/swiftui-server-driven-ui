//
//  HomeViewModel.swift
//  SwiftBank
//
//  Created by Alura on 03/01/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    // MARK: - Attributes
    
    private let service: HomeServiceable
    @Published var screenModel: HomeModel?

    // MARK: - Initialize
    
    init(service: HomeServiceable) {
        self.service = service
    }
    
    // MARK: - API Calls
    
    func getHome() async throws {
        let result = try await service.getHome()
        
        switch result {
        case .success(let response):
            DispatchQueue.main.async {
                self.screenModel = response
            }
        case .failure(let error):
            throw error
        }
    }
    
    func buildSections() throws -> [GenericSectionView] {
        var sections = [GenericSectionView]()
        
        guard let items = screenModel?.items else {
            return []
        }
        
        for item in items {
            switch item.type {
            case .balance:
                guard let model: BalanceResponse = item.content.decode() else {
                    throw RequestError.decode
                }
                sections.append(BalanceSection(model: model))
            case .creditCard:
                guard let model: CreditCardResponse = item.content.decode() else {
                    throw RequestError.decode
                }
                sections.append(CreditCardSection(model: model))
            case .genericSection:
                guard let model: GenericSectionResponse = item.content.decode() else {
                    throw RequestError.decode
                }
                sections.append(GenericSection(model: model))
            case .transactions:
                guard let model: TransactionsSectionResponse = item.content.decode() else {
                    throw RequestError.decode
                }
                sections.append(TransactionsSection(model: model))
            }
        }
        return sections
    }
}
