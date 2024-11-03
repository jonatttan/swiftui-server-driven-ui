//
//  CreditCardView.swift
//  SwiftBank
//
//  Created by Alura on 30/12/23.
//

import SwiftUI

struct CreditCardView: View {
    
    // MARK: - UI Components
    
    private let creditCardBackgroundColor = Color(red: 36.0/255.0,
                                                  green: 41.0/255.0,
                                                  blue: 54.0/255.0)
    
    var body: some View {
        VStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 7)
                .frame(maxWidth: .infinity)
                .frame(height: 120)
                .foregroundColor(creditCardBackgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 7))
                .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
                .overlay(
                    VStack(alignment: .leading) {
                        balance
                        Spacer()
                    }
            )
        }
    }
    
    var balance: some View {
        VStack {
            HStack {
                Image("master-card-icon")
                    .frame(width: 35, height: 35)
                    .foregroundColor(.white)
                    .padding(.leading, 25)
                
                Text("Cartão final 9999")
                    .font(.system(size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "chevron.right")
                    .font(.system(size: 10))
                    .foregroundColor(.white)
                    .padding(.trailing, 20)
            }
            .padding(.top, 10)
            
            HStack {
                Text("Limite disponível")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            
            HStack {
                Text("R$ 9.074,98")
                    .font(.system(size: 17))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            
            HStack {
                Text("Vence em 04/05")
                    .font(.system(size: 12))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
        }
    }
}

struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView()
            .previewLayout(.sizeThatFits)
    }
}
