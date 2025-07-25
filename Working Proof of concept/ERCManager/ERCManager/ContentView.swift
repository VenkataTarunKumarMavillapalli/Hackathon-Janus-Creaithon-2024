//
//  ContentView.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab: Tab = .dashboard
       
    enum Tab {
        case dashboard
        case spaces
        case chart
        case profile
    }
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .bottom){
                
                TabView(selection: $selectedTab ){
                   
                    ConsumerMain()
                        .tag(Tab.dashboard)
                    
                    PresumerMain()
                        .tag(Tab.spaces)
                    
                    ChartView()
                        .tag(Tab.chart)
                    
                    Profile()
                        .tag(Tab.profile)
                }
                
                CustomTabBar(selectedTab: $selectedTab)
                
            }
        }
            .ignoresSafeArea()
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: ContentView.Tab
    
    var body: some View {
        ZStack(alignment: .bottom){
            Rectangle()
                .fill(Color.gray.opacity(0.06))
                .frame(width:.infinity, height: 80)
                
                .blur(radius: 10)
               
            Rectangle()
                .fill(Color.gray.opacity(0.05))
                .shadow(radius: 2)
                .frame(width:.infinity, height: 70)
            
            HStack {
               Spacer()
                TabBarItem(
                    iconName: "circle.dashed",
                    title: "Dashboard",
                    isSelected: selectedTab == .dashboard
                ) {
                    selectedTab = .dashboard
                }
                
                Spacer()
                
                TabBarItem(
                    iconName: "square.grid.2x2.fill",
                    title: "Spaces",
                    isSelected: selectedTab == .spaces
                ) {
                    selectedTab = .spaces
                }
                Spacer()
                
                TabBarItem(
                    iconName: "chart.line.uptrend.xyaxis",
                    title: "Spaces",
                    isSelected: selectedTab == .chart
                ) {
                    selectedTab = .chart
                }
                Spacer()
                TabBarItem(
                    iconName: "person.crop.circle",
                    title: "Spaces",
                    isSelected: selectedTab == .profile
                ) {
                    selectedTab = .profile
                }
                Spacer()
                
            }   .padding(.horizontal)
                .padding(.bottom, 5)
            
        }
       
    }
}

struct TabBarItem: View {
    let iconName: String
    let title: String
    let isSelected: Bool
    let action: () -> Void
    
    var body: some View {
        VStack {
            if isSelected {
                Circle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: iconName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30)
                            .foregroundColor(.white)
                            
                    )
            } else {
                Image(systemName: iconName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25)
                    .foregroundColor(.gray)
            }
            
            Text(title)
                
                .font(.footnote)
                .foregroundColor(isSelected ? .black : .gray)
                .fontWeight(isSelected ? .bold : .regular)
            
        }
        .onTapGesture {
            action()
        }
    }
}

#Preview {
    ContentView()
}
