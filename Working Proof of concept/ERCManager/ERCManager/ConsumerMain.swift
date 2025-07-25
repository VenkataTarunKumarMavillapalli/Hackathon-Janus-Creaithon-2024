//
//  ConsumerMain.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

struct ConsumerMain: View {
      
    let screenHeight = UIScreen.main.bounds.height
    let screenWidth = UIScreen.main.bounds.width
    let screenSize = UIScreen.main.bounds.size
    
    var body: some View {
        NavigationStack {
            VStack {
                ConsumtionCircle()
                    .padding(.top)
                    .navigationTitle("Consumption")
                    .navigationBarTitleDisplayMode(.large)

                ConsumptionList()
            }
            
        }
    }
}

#Preview {
    ConsumerMain()
}
