//
//  SavingsView.swift
//  SwiftBank
//
//  Created by Alura on 31/12/23.
//

import SwiftUI

struct SavingsView: View {
    
    // MARK: - UI Components
    
    private let grayColor = Color(red: 243.0/255.0,
                                      green: 243.0/255.0,
                                      blue: 243.0/255.0)
    
    var body: some View {
        Button {
            print("poupança")
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
                Text("Poupança")
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
            Text("Guarde dinheiro e realize grandes sonhos.")
                .font(.system(size: 12))
                .fontWeight(.light)
                .lineSpacing(5)
                .multilineTextAlignment(.leading)
        }
    }
}

struct SavingsView_Previews: PreviewProvider {
    static var previews: some View {
        SavingsView()
            .previewLayout(.sizeThatFits)
    }
}
