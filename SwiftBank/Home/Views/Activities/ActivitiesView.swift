//
//  ActivitiesView.swift
//  SwiftBank
//
//  Created by Ândriu F Coelho on 31/12/23.
//

import SwiftUI

struct ActivitiesView: View {
    
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
                Text("Últimas transações")
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
        VStack {
            activityRowView
            activityRowView
            activityRowView
        }
    }
    
    var activityRowView: some View {
        VStack {
            HStack {
                Image("restaurante-icon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color(red: 230.0/255.0, green: 230.0/255.0, blue: 230.0/255.0), lineWidth: 0.5)
                    )
                VStack(alignment: .leading) {
                    Text("Compra realizada no iFood")
                        .font(.system(size: 14))
                        .fontWeight(.light)
                    
                    Text("R$ 22,70")
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                        .fontWeight(.light)
                }
            }
            
        }
        .frame(height: 60)
    }
}

struct ActivitiesView_Previews: PreviewProvider {
    static var previews: some View {
        ActivitiesView()
            .previewLayout(.sizeThatFits)
    }
}
