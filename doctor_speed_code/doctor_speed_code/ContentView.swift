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
            HeaderView()
            
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
            }.padding([.horizontal, .vertical])
            
            
            

            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textFieldValue: .constant(""))
    }
}
