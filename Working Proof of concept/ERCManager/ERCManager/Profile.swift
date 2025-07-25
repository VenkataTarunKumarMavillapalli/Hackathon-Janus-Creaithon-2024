//
//  Profile.swift
//  ERCManager
//
//  Created by Linar Zinatullin on 19/07/24.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        NavigationView {
            VStack {
                // Profile Picture with Edit Button
                ZStack(alignment: .bottomTrailing) {
                    Image("profile")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    
                    Button(action: {
                        // Action for edit button
                    }) {
                        Image(systemName: "pencil")
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color.green)
                            .clipShape(Circle())
                    }
                    .offset(x: 15, y: 10)
                }
                .padding(.top, 20)
                
                // House Name
                Text("House4")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 10)
                
                // Owner Information Section
                VStack(alignment: .leading, spacing: 10) {
                    HStack {
                        Text("Owner Information")
                            .font(.headline)
                        
                        Spacer()
                        
                        Button(action: {
                            // Action for edit button
                        }) {
                            HStack {
                                Image(systemName: "pencil")
                                    .foregroundColor(.green)
                                Text("Edit")
                                    .foregroundColor(.green)
                            }
                        }
                    }
                    .padding(.bottom, 10)
                    
                    InformationRow(label: "Account number", value: "8745 1147 8895 4125")
                    InformationRow(label: "Name", value: "Maria Odoroso")
                    InformationRow(label: "Email", value: "mari.odo@gmail.com")
                    InformationRow(label: "Mobile phone", value: "+68 547 599 541")
                    InformationRow(label: "Address", value: "Kanceliarijos str 45-13, Vilnius\nParaudos awe 14B, Azagariai village, Utena County")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(10)
                .padding(.horizontal)
                
                Spacer()
            }
            .navigationTitle("Profile")
            
        }
    }
}

struct InformationRow: View {
    let label: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            HStack {
                Text(label)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Spacer()
            }
            Text(value)
                .font(.body)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

#Preview {
    Profile()
}
