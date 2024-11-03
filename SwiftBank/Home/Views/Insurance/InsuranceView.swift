//
//  InsuranceView.swift
//  SwiftBank
//
//  Created by Ândriu F Coelho on 01/01/24.
//

import SwiftUI

struct InsuranceView: View {
    
    // MARK: - UI Components
    
    var body: some View {
        Button {
            print("seguros")
        } label: {
            RoundedRectangle(cornerRadius: 7)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .shadow(color: Color.gray.opacity(0.5), radius: 7, x: 0, y: 2)
                .overlay(
                    VStack(alignment: .leading) {
                        header
                            .padding(.top, 20)
                            .padding(.horizontal)
                        textMessage
                            .padding(.horizontal)
                        Spacer()
                    }
                )
        }
    }
    
    var header: some View {
        VStack {
            HStack {
                Text("Seguros")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 10))
            }
            .padding(.bottom, 2)
        }
    }
    
    var textMessage: some View {
        HStack {
            Text("Mantenha protegido o que há de mais importante em sua vida")
                .font(.system(size: 12))
                .fontWeight(.light)
                .lineSpacing(5)
                .multilineTextAlignment(.leading)
        }
    }
}

struct InsuranceView_Previews: PreviewProvider {
    static var previews: some View {
        InsuranceView()
            .previewLayout(.sizeThatFits)
    }
}
