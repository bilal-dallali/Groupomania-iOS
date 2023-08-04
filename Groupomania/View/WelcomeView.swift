//
//  WelcomeView.swift
//  Groupomania
//
//  Created by Bilal Dallali on 04/08/2023.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("welcome-icon")
            Spacer()
            Text("Let's you in")
                .foregroundColor(Color("White"))
                .font(.custom("Urbanist-Bold", size: 40))
            Spacer()
            VStack(spacing: 24) {
                VStack(spacing: 16) {
                    Button {
                        //
                    } label: {
                        HStack(spacing: 12) {
                            Image("facebook-logo")
                            Text("Continue with Facebook")
                                .foregroundColor(Color("White"))
                                .font(.custom("Urbanist-SemiBold", size: 16))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color("Dark2"))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .inset(by: 0.5)
                                .stroke(Color("Dark3"), lineWidth: 1)
                        )
                    }
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 12) {
                            Image("google-logo")
                            Text("Continue with Google")
                                .foregroundColor(Color("White"))
                                .font(.custom("Urbanist-SemiBold", size: 16))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color("Dark2"))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .inset(by: 0.5)
                                .stroke(Color("Dark3"), lineWidth: 1)
                        )
                    }
                    
                    Button {
                        //
                    } label: {
                        HStack(spacing: 12) {
                            Image("apple-logo")
                            Text("Continue with Apple")
                                .foregroundColor(Color("White"))
                                .font(.custom("Urbanist-SemiBold", size: 16))
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 60)
                        .background(Color("Dark2"))
                        .cornerRadius(16)
                        .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .inset(by: 0.5)
                                .stroke(Color("Dark3"), lineWidth: 1)
                        )
                    }
                }
                
                HStack(spacing: 16) {
                    Rectangle()
                        .fill(Color("Dark3"))
                        .frame(height: 1)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(.infinity)
                    
                    Text("or")
                        .foregroundColor(Color("White"))
                        .font(.custom("Urbanist-SemiBold", size: 18))
                    
                    Rectangle()
                        .fill(Color("Dark3"))
                        .frame(height: 1)
                        .frame(maxWidth: .infinity)
                        .cornerRadius(.infinity)
                }
                .padding(10)
                
                Button {
                    //
                } label: {
                    Text("Sign in with password")
                        .foregroundColor(Color("White"))
                        .font(.custom("Urbanist-Bold", size: 16))
                        .padding(.vertical, 18)
                        .padding(.horizontal, 16)
                        .frame(maxWidth: .infinity, minHeight: 55)
                        .background(Color("Primary500"))
                        .cornerRadius(.infinity)
                }
            }
            Spacer()
            
            HStack(spacing: 8) {
                Text("Don’t have an account?")
                    .foregroundColor(Color("White"))
                    .font(.custom("Urbanist-Regular", size: 14))
                Text("Sign up")
                    .foregroundColor(Color("Primary500"))
                    .font(.custom("Urbanist-Semibold", size: 14))
            }
        }
        .padding(.horizontal, 24)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Dark1"))
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                BackButtonView()
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
