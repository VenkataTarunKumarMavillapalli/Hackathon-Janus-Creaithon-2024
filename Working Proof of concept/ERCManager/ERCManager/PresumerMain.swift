//
//  PresumerMain.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

struct PresumerMain: View {
    
    var screenSize = UIScreen.main.bounds.size
    var screenHeight = UIScreen.main.bounds.height
    var screenWidth = UIScreen.main.bounds.width
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 20) {
                        ZStack(alignment: .bottom) {
                        Image("image2")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 1")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                        ZStack(alignment: .bottom) {
                        Image("image0")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 2")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                        
                        ZStack(alignment: .bottom) {
                        Image("image4")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 3")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                        ZStack(alignment: .bottom) {
                        Image("image2")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 4")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                        ZStack(alignment: .bottom) {
                        Image("image2")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 5")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                        ZStack(alignment: .bottom) {
                        Image("image0")
                                .resizable()
                            .frame(width: screenWidth * 0.4, height: screenWidth * 0.4)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            HStack {
                                Text("House 6")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                            }.padding()
                                
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Spaces")
            .navigationBarTitleDisplayMode(.large)
        }
        
        
       
    }
}

#Preview {
    PresumerMain()
}
