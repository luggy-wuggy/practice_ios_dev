//
//  ContentView.swift
//  doctor_speed_code
//
//  Created by Luqman Abdurrohman on 10/9/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//



import SwiftUI

struct ContentView: View {
    
    @Binding var textFieldValue : String
    
    var body: some View {
        
        
        VStack{
            ScrollView(.vertical){
                GeometryReader { g in
                    HeaderView()
                        .offset(y: g.frame(in: .global).minY > 0 ?  -g.frame(in: .global).minY : 0)
                        .frame(height: g.frame(in: .global).minY > 0 ?
                            UIScreen.main.bounds.height/4 + g.frame(in: .global).minY : UIScreen.main.bounds.height/4)
                }
                .frame(height: UIScreen.main.bounds.height/4)
                
                HStack{
                    Text("Categories")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("See All")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                }.padding(.horizontal)

                ScrollView(.horizontal) {
                    HStack(spacing: 25) {
                        ForEach(categoryData) { category in
                            CategoryCell(category: category)
                        }
                    }.padding(.horizontal)
                }

                HStack{
                    Text("Your schedules")
                        .font(.title)
                        .fontWeight(.semibold)
                    Spacer()
                    Text("See All")
                        .font(.subheadline)
                        .foregroundColor(Color.blue)
                }.padding([.horizontal, .top])
                
                ForEach(0..<4){index in
                    DoctorCard()
                }
    
                
//                DoctorCard()
//    
//                DoctorCard()
            }.edgesIgnoringSafeArea(.top)
            
            
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textFieldValue: .constant(""))
    }
}
