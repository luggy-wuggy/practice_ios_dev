//
//  HeaderView.swift
//  doctor_speed_code
//
//  Created by Luqman Abdurrohman on 10/9/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI


struct HeaderView: View{
    var body: some View{
        VStack(alignment: .leading, spacing: 0.0){
            HStack {
                Spacer()
                Image("luggy")
                    .resizable()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white,lineWidth: 4))
            }
            Text("Find a doctor")
                .foregroundColor(Color.white)
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom)
            HStack {
                Image(systemName: "magnifyingglass")
                    .padding(.horizontal, 7)
                
                Text("Search a doctor")
                    
                Spacer()
                    
            }
            .frame(minWidth: 0,
            maxWidth: .infinity,
            minHeight: 0,
            maxHeight: 40)
            .background(Color(.systemGray6).opacity(0.25))
            .foregroundColor(Color(.systemGray4))
            .cornerRadius(12)
        }
        .padding(.horizontal)
        .frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 0,
                maxHeight: 200)
           // rgb(80, 75, 237)
            .background(Color(red: 0.3, green: 0.29, blue: 0.92))
            
        .cornerRadius(30, corners: [.bottomRight, .bottomLeft])
        .edgesIgnoringSafeArea(.top)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
