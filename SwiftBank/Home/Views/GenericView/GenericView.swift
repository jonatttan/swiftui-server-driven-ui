//
//  LoanView.swift
//  SwiftBank
//
//  Created by Alura on 31/12/23.
//

import SwiftUI

struct GenericView: View {
    
    // MARK: - Attributes
    
    var genericResponse: GenericSectionResponse
    
    // MARK: - UI Components
    
    private let grayColor = Color(red: 243.0/255.0,
                                      green: 243.0/255.0,
                                      blue: 243.0/255.0)
    
    var body: some View {
        Button {
            print(genericResponse.title.text)
        } label: {
            RoundedRectangle(cornerRadius: 7)
                .frame(maxWidth: .infinity)
                .frame(height: 80)
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
                Text(genericResponse.title.text)
                    .font(.system(size: CGFloat(genericResponse.title.fontSize)))
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
            Text(genericResponse.subtitle.text)
                .font(.system(size: CGFloat(genericResponse.subtitle.fontSize)))
                .fontWeight(.light)
                .lineSpacing(5)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
        }
    }
}

struct LoanView_Previews: PreviewProvider {
    static var previews: some View {
        GenericView(genericResponse: GenericSectionResponse(
            title: TextModel(text: "Title", fontSize: 18, color: "#CCCCCC"),
            subtitle: TextModel(text: "Subtitle", fontSize: 12, color: "#CCCCCC")
        ))
            .previewLayout(.sizeThatFits)
    }
}
