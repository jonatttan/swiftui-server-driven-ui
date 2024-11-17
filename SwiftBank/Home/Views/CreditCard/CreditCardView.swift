//
//  CreditCardView.swift
//  SwiftBank
//
//  Created by Alura on 30/12/23.
//

import SwiftUI

struct CreditCardView: View {
    
    // MARK: - Attributes
    
    var creditCardVM: CreditCardResponse
    
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
                Image(creditCardVM.icon)
                    .frame(width: 35, height: 35)
                    .foregroundColor(.white)
                    .padding(.leading, 25)
                
                Text(creditCardVM.title.text)
                    .font(.system(size: CGFloat(creditCardVM.title.fontSize)))
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
                Text(creditCardVM.subtitle.text)
                    .font(.system(size: CGFloat(creditCardVM.subtitle.fontSize)))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            
            HStack {
                Text(creditCardVM.value.text)
                    .font(.system(size: CGFloat(creditCardVM.value.fontSize)))
                    .fontWeight(.regular)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                Spacer()
            }
            
            HStack {
                Text(creditCardVM.dueDate.text)
                    .font(.system(size: CGFloat(creditCardVM.dueDate.fontSize)))
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
        CreditCardView(creditCardVM: CreditCardResponse(
            title: TextModel(text: "Cartão final 0908", fontSize: 17, color: "#CCCCCC"),
            icon: "master-card-icon",
            subtitle: TextModel(text: "Limite", fontSize: 17, color: "#CCCCCC"),
            value: TextModel(text: "R$ 200,00", fontSize: 24, color: "#CCCCCC"),
            dueDate: TextModel(text: "Vence em 20/09", fontSize: 17, color: "#CCCCCC"))
        )
            .previewLayout(.sizeThatFits)
    }
}
