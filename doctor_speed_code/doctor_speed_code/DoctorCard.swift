//
//  DoctorCard.swift
//  doctor_speed_code
//
//  Created by Luqman Abdurrohman on 10/21/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

struct DoctorCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(height: 160)
                .foregroundColor(Color(hex: 0xf1f2f8))
                
            HStack(alignment: .top){
                
                Image("dhiva")
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
                
                
                VStack(alignment: .leading, spacing: 18){
                    Text("Dr. Dhiva Krishna")
                        .font(.headline)
                        .fontWeight(.heavy)
                        //.padding(.top)
                    Text("Surgeon")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.gray)
                    

                        
                    ZStack {
                        RoundedRectangle(cornerRadius: 13)
                            .stroke(Color.gray, lineWidth: 2)
                            .frame(width: 220, height: 35)
                        
                        Text("Mon 5 Oct   09:30")
                            .font(.headline)
                            .fontWeight(.bold)
                            .foregroundColor(Color.gray)
                            .padding()

                    }
                    
                    
                    
        
                        
                }
                Spacer()
            }.padding([.horizontal, .top])
            
            ZStack {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color.white)
                    .shadow(color: Color(hex: 0xc4c5c5), radius: 5, y: 2)
                    //.shadow(radius: 2)
                Image(systemName: "video.fill")
                    .scaleEffect(0.8)
                    .foregroundColor(Color.green)
                
            }.offset(x: 130, y: -50)
            
        }.padding(.horizontal)

    }
}

struct DoctorCard_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCard()
    }
}
