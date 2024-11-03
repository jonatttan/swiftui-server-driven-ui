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
            self.screenModel = response
        case .failure(let error):
            throw error
        }
    }
}
