//
//  BalanceView.swift
//  SwiftBank
//
//  Created by Alura on 27/12/23.
//

import SwiftUI

struct BalanceView: View {
    
    // MARK: - Attributes
    
    // MARK: - UI Components
    
    private let grayColor = Color(red: 243.0/255.0,
                                      green: 243.0/255.0,
                                      blue: 243.0/255.0)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 7)
            .frame(maxWidth: .infinity)
            .frame(height: 180)
            .foregroundColor(.white)
            .clipShape(RoundedRectangle(cornerRadius: 7))
            .shadow(color: Color.gray.opacity(0.5), radius: 5, x: 0, y: 2)
            .overlay(
                VStack(alignment: .leading) {
                    balance
                        .padding(.horizontal)
                    mainActions
                }
            )
    }
    
    var balance: some View {
        VStack {
            HStack {
                Text("Conta")
                    .font(.system(size: 16))
                    .fontWeight(.medium)
                Spacer()
                Image(systemName: "chevron.right")
                    .font(.system(size: 10))
            }
            
            HStack {
                Text("R$ 88,67")
                    .font(.system(size: 28))
                    .fontWeight(.semibold)
                Spacer()
            }
        }
    }
    
    var mainActions: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 13) {
                Button {
                    print("pix")
                } label: {
                    VStack {
                        Circle()
                            .fill(grayColor)
                            .frame(width: 55, height: 55)
                            .overlay {
                                Image("pix-icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        
                        
                        Text("Pix")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.light)
                    }
                }
                .frame(width: 80, height: 70)
                
                Button {
                    print("Transferir")
                } label: {
                    VStack {
                        Circle()
                            .fill(grayColor)
                            .frame(width: 55, height: 55)
                            .overlay {
                                Image("transfer-money-icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        
                        Text("Transferir")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.light)
                    }
                }
                .frame(width: 80, height: 70)
                
                Button {
                    print("QR Code")
                } label: {
                    VStack {
                        Circle()
                            .fill(grayColor)
                            .frame(width: 55, height: 55)
                            .overlay {
                                Image("qr-code-icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        
                        Text("QR Code")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.light)
                    }
                }
                .frame(width: 80, height: 70)
                
                Button {
                    print("Recarga")
                } label: {
                    VStack {
                        Circle()
                            .fill(grayColor)
                            .frame(width: 55, height: 55)
                            .overlay {
                                Image("cellphone-icon")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 30, height: 30)
                            }
                        
                        Text("Recarga")
                            .font(.system(size: 14))
                            .foregroundColor(.black)
                            .fontWeight(.light)
                    }
                }
                .frame(width: 80, height: 70)
            }
            .frame(height: 85)
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .previewLayout(.sizeThatFits)
    }
}
