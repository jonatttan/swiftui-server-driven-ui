//
//  ActivitiesView.swift
//  SwiftBank
//
//  Created by Ândriu F Coelho on 31/12/23.
//

import SwiftUI

struct ActivitiesView: View {
    
    // MARK: - Attributes
    
    var transactionsResponse: TransactionsSectionResponse
    
    // MARK: - UI Components
    
    private let grayColor = Color(red: 243.0/255.0,
                                      green: 243.0/255.0,
                                      blue: 243.0/255.0)
    
    var body: some View {
        Button {
            print("poupança")
        } label: {
            ZStack(alignment: .topLeading) {
                RoundedRectangle(cornerRadius: 7)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .shadow(color: Color.gray.opacity(0.5), radius: 7, x: 0, y: 2)

                VStack(alignment: .leading) {
                    header
                        .padding(.top, 20)
                        .padding(.horizontal)
                    
                    textMessage
                        .padding(.horizontal)
                        .padding(.bottom, 20)
                }
            }
        }
    }
    
    var header: some View {
        VStack {
            HStack {
                Text(transactionsResponse.title.text)
                    .font(.system(size: CGFloat(transactionsResponse.title.fontSize)))
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 10))
            }
            .padding(.bottom, 2)
        }
    }
    
    var textMessage: some View {
        VStack {
            ForEach(transactionsResponse.items, id: \.identifier) { item in
                ActivitieViewCell(model: item)
            }
        }
    }
}

struct ActivitieViewCell: View {
    
    // MARK: - Attributes
    var model: TransactionsSectionResponse.TransactionItem
    
    var body: some View {
        VStack {
            HStack {
                Image(model.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0), lineWidth: 0.5)
                    )
                VStack(alignment: .leading) {
                    Text(model.title.text)
                        .font(.system(size: CGFloat(model.title.fontSize)))
                        .fontWeight(.light)
                    
                    Text(model.value.text)
                        .font(.system(size: CGFloat(model.value.fontSize)))
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                }
                Spacer()
            }
        }
        .frame(height: 60)
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView(transactionsResponse: TransactionsSectionResponse(
            title: TextModel(text: "Sample Title",
                             fontSize: 16,
                             color: "#CCCCCC"),
            items: [
                TransactionsSectionResponse.TransactionItem(identifier: 01,
                                                                icon: "restaurante-icon",
                                                                title: TextModel(text: "Compra Baratão",
                                                                                 fontSize: 14,
                                                                                 color: "#CCCCCC"),
                                                                value: TextModel(text: "R$ 34,99",
                                                                                 fontSize: 16,
                                                                                 color: "#CCCCCC")),
                TransactionsSectionResponse.TransactionItem(identifier: 02,
                                                                icon: "restaurante-icon",
                                                                title: TextModel(text: "Compra Baratão",
                                                                                 fontSize: 14,
                                                                                 color: "#CCCCCC"),
                                                                value: TextModel(text: "R$ 34,99",
                                                                                 fontSize: 16,
                                                                                 color: "#CCCCCC")),
                TransactionsSectionResponse.TransactionItem(identifier: 03,
                                                                icon: "restaurante-icon",
                                                                title: TextModel(text: "Compra realizada no Biricotico",
                                                                                 fontSize: 14,
                                                                                 color: "#CCCCCC"),
                                                                value: TextModel(text: "R$ 34,99",
                                                                                 fontSize: 16,
                                                                                 color: "#CCCCCC")),
            ]))
            .previewLayout(.sizeThatFits)
    }
}
