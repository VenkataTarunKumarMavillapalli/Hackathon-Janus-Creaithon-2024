//
//  Chart.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

import Charts

struct ChartView: View {
    @State private var selectedPeriod: String = "Month"
    private let periods = ["Day", "Week", "Month", "All time"]
    
    // Sample data
    let data: [ChartData] = [
        ChartData(month: "Jan", value: 200),
        ChartData(month: "Feb", value: 250),
        ChartData(month: "Mar", value: 300),
        ChartData(month: "Apr", value: 150),
        ChartData(month: "May", value: 652),
        ChartData(month: "Jun", value: 400)
    ]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 20) {
                
                
                // Generated Energy Information
                VStack {
                    Text("Wh generated")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("12,502")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    HStack {
                        Image(systemName: "arrow.down")
                            .foregroundColor(.red)
                        Text("2,131Wh (14%)")
                            .foregroundColor(.red)
                            .font(.subheadline)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).stroke(Color.gray, lineWidth: 1))
                .padding(.horizontal)
                
                // Segmented Control for Time Selection
                Picker("", selection: $selectedPeriod) {
                    ForEach(periods, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                // Graph View
                Chart {
                    ForEach(data) { item in
                        LineMark(
                            x: .value("Month", item.month),
                            y: .value("Value", item.value)
                        )
                        .interpolationMethod(.catmullRom)
                        .foregroundStyle(Color.orange)
                    }
                }
                .frame(height: 200)
                .padding(.horizontal)
                
                // Legend
                HStack(spacing: 20) {
                    LegendItem(color: .blue, text: "Wind power")
                    LegendItem(color: .yellow, text: "Solar power")
                    LegendItem(color: .black, text: "Regular provider")
                }
                .padding(.horizontal)
                .padding(.bottom, 20)
                
                Spacer()
            }
            .padding(.top)
            .navigationTitle("Statistics")
        }
    }
}

struct ChartData: Identifiable {
    let id = UUID()
    let month: String
    let value: Double
}

struct LegendItem: View {
    let color: Color
    let text: String
    
    var body: some View {
        HStack {
            Rectangle()
                .fill(color)
                .frame(width: 20, height: 20)
                .cornerRadius(3)
            Text(text)
                .font(.subheadline)
        }
    }
}

#Preview {
    ChartView()
}
