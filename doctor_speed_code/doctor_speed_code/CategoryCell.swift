//
//  CategoryCell.swift
//  doctor_speed_code
//
//  Created by Luqman Abdurrohman on 10/9/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

var dummy = Category(name: "Optometrist",
 iconName: "eyeglasses",
 foreground: Color(hex: 0x4695ff),
 background: Color(hex: 0xaaceff)
)

struct CategoryCell: View{
    let category : Category
    
    
    
    var body: some View{
        VStack(spacing: 5){
            ZStack {
                Circle()
                    .frame(width: 60, height: 60)
                    .foregroundColor(category.background)
                    //.shadow(radius: 2)
                Image(systemName: category.iconName)
                
                    .scaleEffect(1.4)
                    //.resizable()
                    //.frame(width: 35, height: 20)
                    .foregroundColor(category.foreground)
                
            }
            Text(category.name)
                .font(.footnote)
        }
    }
}



struct CategoryCell_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryCell(category: dummy)
    }
}
