//
//  ContentView.swift
//  Groupomania
//
//  Created by Bilal Dallali on 01/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    
        
    @State private var titleIndex: Int = 0
    @State private var subtitle = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack(spacing: 0) {
                    Image("carousel-1")
                        .padding(.vertical, 80)
                    Spacer()
                }
                VStack(spacing: 0) {
                    Spacer()
                    VStack(spacing: 40) {
//                        RoundedRectangle(cornerRadius: .infinity)
//                            .frame(width: 38, height: 3)
//                            .foregroundColor(Color("Greyscale800"))
                        VStack(spacing: 20) {
                            if titleIndex == 0 {
                                Text("The Best Social Media App of the Century")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .foregroundColor(Color.white)
                                    .font(.custom("Urbanist-Bold", size: 32))
                                    .fixedSize(horizontal: false, vertical: true)
                            } else if titleIndex == 1 {
                                Text("Let's Connect with Everyone in the World")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .foregroundColor(Color.white)
                                    .font(.custom("Urbanist-Bold", size: 32))
                                    .fixedSize(horizontal: false, vertical: true)
                            } else {
                                Text("Everything You Can Do in the App")
                                    .multilineTextAlignment(.center)
                                    .lineLimit(nil)
                                    .foregroundColor(Color.white)
                                    .font(.custom("Urbanist-Bold", size: 32))
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.")
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                                .foregroundColor(Color("White"))
                                .font(.custom("Urbanist-Regular", size: 16))
                        }
                        if titleIndex == 0 {
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            stops: [
                                                Gradient.Stop(color: Color(red: 1, green: 0.3, blue: 0.4), location: 0.00),
                                                Gradient.Stop(color: Color(red: 1, green: 0.54, blue: 0.61), location: 1.00),
                                            ],
                                            startPoint: UnitPoint(x: 1, y: 1),
                                            endPoint: UnitPoint(x: 0, y: 0)
                                        )
                                    )
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                            }
                        } else if titleIndex == 1 {
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            stops: [
                                                Gradient.Stop(color: Color(red: 1, green: 0.3, blue: 0.4), location: 0.00),
                                                Gradient.Stop(color: Color(red: 1, green: 0.54, blue: 0.61), location: 1.00),
                                            ],
                                            startPoint: UnitPoint(x: 1, y: 1),
                                            endPoint: UnitPoint(x: 0, y: 0)
                                        )
                                    )
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                            }
                        } else {
                            HStack(spacing: 12) {
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(Color("Greyscale800"))
                                    .frame(width: 6, height: 6)
                                Circle()
                                    .fill(
                                        LinearGradient(
                                            stops: [
                                                Gradient.Stop(color: Color(red: 1, green: 0.3, blue: 0.4), location: 0.00),
                                                Gradient.Stop(color: Color(red: 1, green: 0.54, blue: 0.61), location: 1.00),
                                            ],
                                            startPoint: UnitPoint(x: 1, y: 1),
                                            endPoint: UnitPoint(x: 0, y: 0)
                                        )
                                    )
                                    .frame(width: 6, height: 6)
                            }
                        }
                        
                        
                        VStack(spacing: 12) {
                            if titleIndex == 0 {
                                Button {
                                    titleIndex = 1
                                } label: {
                                    Text("Next")
                                        .foregroundColor(Color("White"))
                                        .font(.custom("Urbanist-Bold", size: 16))
                                        .padding(.vertical, 18)
                                        .padding(.horizontal, 16)
                                        .frame(maxWidth: .infinity, minHeight: 55)
                                        .background(Color("Primary500"))
                                        .cornerRadius(.infinity)
                                }
                            } else if titleIndex == 1 {
                                Button {
                                    titleIndex = 2
                                } label: {
                                    Text("Next")
                                        .foregroundColor(Color("White"))
                                        .font(.custom("Urbanist-Bold", size: 16))
                                        .padding(.vertical, 18)
                                        .padding(.horizontal, 16)
                                        .frame(maxWidth: .infinity, minHeight: 55)
                                        .background(Color("Primary500"))
                                        .cornerRadius(.infinity)
                                }
                            } else {
                                NavigationLink {
                                    Text("hello")
                                } label: {
                                    Text("Next")
                                        .foregroundColor(Color("White"))
                                        .font(.custom("Urbanist-Bold", size: 16))
                                        .padding(.vertical, 18)
                                        .padding(.horizontal, 16)
                                        .frame(maxWidth: .infinity, minHeight: 55)
                                        .background(Color("Primary500"))
                                        .cornerRadius(.infinity)
                                }
                            }
                            
                            Button {
                                //
                            } label: {
                                Text("Skip")
                                    .foregroundColor(Color("White"))
                                    .font(.custom("Urbanist-Bold", size: 16))
                                    .padding(.vertical, 18)
                                    .padding(.horizontal, 16)
                                    .frame(maxWidth: .infinity, minHeight: 55)
                                    .background(Color("Dark3"))
                                    .cornerRadius(.infinity)
                            }

                        }
                    }
                    .padding(.horizontal, 24)
                    .padding(.bottom, 40)
                    .padding(.top, 8)
                    .frame(maxWidth: .infinity)
                    .cornerRadius(40)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 40)
//                            .inset(by: 0.5)
//                            .stroke(Color("Dark3"), lineWidth: 1)
//                    )
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color("Dark1"))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
