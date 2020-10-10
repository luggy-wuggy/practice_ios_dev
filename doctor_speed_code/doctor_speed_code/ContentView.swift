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
            
            
            Spacer()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(textFieldValue: .constant(""))
    }
}