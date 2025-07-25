//
//  ConsumptionList.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI


struct PlugIn: Identifiable {
    let id = UUID()
    let name: String
    let energyConsumption: Int
}

struct AreaConsumption: Identifiable {
    let id = UUID()
    let color: Color
    let name: String
    let kWh: Int
    let percentage: Double
    let co2: Double
    let plugs: [PlugIn]
}

struct ConsumptionList: View {
    
    let areas: [AreaConsumption] = [
        AreaConsumption(
            color: .green,
            name: "Kitchen",
            kWh: 625,
            percentage: 40,
            co2: 1.2,
            plugs: [
                PlugIn(name: "Fridge", energyConsumption: 150),
                PlugIn(name: "Oven", energyConsumption: 200),
                PlugIn(name: "Microwave", energyConsumption: 50)
            ]
        ),
        AreaConsumption(
            color: .yellow,
            name: "Bedroom",
            kWh: 314,
            percentage: 28,
            co2: 0.7,
            plugs: [
                PlugIn(name: "Lamp", energyConsumption: 30),
                PlugIn(name: "Heater", energyConsumption: 100)
            ]
        ),
        AreaConsumption(
            color: .green.opacity(0.7),
            name: "Bathroom",
            kWh: 112,
            percentage: 10,
            co2: 0.3,
            plugs: [
                PlugIn(name: "Hair Dryer", energyConsumption: 80),
                PlugIn(name: "Electric Shaver", energyConsumption: 20)
            ]
        ),
        AreaConsumption(
            color: .green.opacity(0.5),
            name: "Living Room",
            kWh: 37,
            percentage: 3.5,
            co2: 0.1,
            plugs: [
                PlugIn(name: "TV", energyConsumption: 30),
                PlugIn(name: "Game Console", energyConsumption: 7)
            ]
        ),
        AreaConsumption(
            color: .yellow,
            name: "General area",
            kWh: 740,
            percentage: 59,
            co2: 1.8,
            plugs: []
        )
    ]
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Circle()
                    .fill(.clear)
                    .frame(width: 10, height: 10)
                
                Text("Area name")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer()
                
                Text("KWh")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer().frame(width: 5)
                
                Text("%")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                
                Text("Co2(Kg)")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                Spacer().frame(width: 10)
            }
            .frame(height: 20)
            .padding([.horizontal])
            
            ScrollView(showsIndicators: true) {
                ForEach(areas) { area in
                    if area.name != areas.last?.name {
                        DisclosureGroup {
                            VStack(alignment: .leading) {
                                ForEach(area.plugs) { plug in
                                    HStack {
                                        Text(plug.name)
                                            .font(.subheadline)
                                        Spacer()
                                        Text("\(plug.energyConsumption)")
                                            .font(.subheadline)
                                        Spacer().frame(width: 150)
                                    }
                                    .padding(.vertical, 2)
                                }
                            }
                            .padding(.leading, 30)
                        } label: {
                            HStack {
                                Circle()
                                    .fill(area.color)
                                    .frame(width: 20, height: 20)
                                
                                Text(area.name)
                                    .foregroundStyle(.black)
                                    .fontWeight(.bold)
                                
                                Spacer()
                                
                                HStack(spacing: 5) {
                                    Text("\(area.kWh)")
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 50, alignment: .leading)
                                    Text("\(area.percentage, specifier: "%.1f")")
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 50, alignment: .leading)
                                    Text("\(area.co2, specifier: "%.1f")")
                                        .foregroundStyle(.black)
                                        .frame(minWidth: 50, alignment: .leading)
                                }
                            }
                            .padding(.vertical, 4)
                        }
                    }
                    
                }
                .padding(.horizontal)
            }
            
            if let area = areas.last {
                Spacer()
                HStack {
                    Circle()
                        .fill(area.color)
                        .frame(width: 20, height: 20)
                    
                    Text(area.name)
                        .foregroundStyle(.black)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    HStack(spacing: 5) {
                        Text("\(area.kWh)")
                            .foregroundStyle(.black)
                            .frame(minWidth: 50, alignment: .leading)
                        Text("\(area.percentage, specifier: "%.1f")")
                            .foregroundStyle(.black)
                            .frame(minWidth: 50, alignment: .leading)
                        Text("\(area.co2, specifier: "%.1f")")
                            .foregroundStyle(.black)
                            .frame(minWidth: 50, alignment: .leading)
                    }
                    Spacer().frame(width: 14)
                }
                .padding(.horizontal)
            }
        }
        .padding()
    }
}

#Preview {
    ConsumptionList()
}
