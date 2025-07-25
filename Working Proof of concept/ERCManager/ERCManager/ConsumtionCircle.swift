//
//  ConsumtionCircle.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

struct ConsumtionCircle: View {
    
    @State private var progress: CGFloat = 0.0
    
    @State private var color: Color = .clear
    
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    let screenSize = UIScreen.main.bounds.size
    var body: some View {
        ZStack {
            VStack{

                HStack {
                    GeometryReader { geometryProxy in
                        Circle()
                            .fill(color)
                            .colorEffect(ShaderLibrary.fillIn(.float2(geometryProxy.size),.float(progress)))
                            .onAppear {
                                withAnimation(.easeInOut(duration: 2)) {
                                    progress = 0.59
                                    if progress >= 0.0 && progress <= 0.3 {
                                        color = .green
                                    } else if
                                        progress > 0.3 && progress <= 0.6 {
                                        color = .yellow
                                    }
                                    else {
                                        color = .red
                                    }
                                }
                            }
                        
                    }
                }
                .frame(width: screenWidth * 0.8, height: screenWidth * 0.8)
                
            }
            
            
            Circle()
                .stroke(lineWidth: 2)
                .opacity(1.0)
                .foregroundColor(Color.gray)
            // Rotate to start from the bottom
                .frame(width: screenWidth * 0.8, height: screenWidth * 0.8)
            Circle()
                .stroke(lineWidth: 5)
                .opacity(1.0)
                .foregroundColor(Color.gray)
            // Rotate to start from the bottom
                .frame(width: screenWidth * 0.77)
                .blur(radius: 12.0)
            
            // Text to display percentage of progress
            Text("\(Int(progress * 100))%")
                .font(.largeTitle)
                .fontWeight(.bold)
        }.background(.clear)
    }
}

#Preview {
    ConsumtionCircle()
}
