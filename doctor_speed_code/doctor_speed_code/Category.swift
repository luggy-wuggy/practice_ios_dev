//
//  Category.swift
//  doctor_speed_code
//
//  Created by Luqman Abdurrohman on 10/9/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//

import SwiftUI

let categoryData = [Category(name: "Optometrist",
                             iconName: "eyeglasses",
                             foreground: Color(hex: 0x4695ff),
                             background: Color(hex: 0xaaceff)
                            ),
                    Category(name: "Pediatrician",
                     iconName: "bandage.fill",
                     foreground: Color(hex: 0x3ee0d9),
                     background: Color(hex: 0xd8f9f7)
                    ),
                    Category(name: "Surgeon",
                     iconName: "scissors",
                     foreground: Color(hex: 0xcb62f3),
                     background: Color(hex: 0xecccf9)
                    ),
                    Category(name: "Physicians",
                     iconName: "thermometer",
                     foreground: Color(hex: 0xc4c5c5),
                     background: Color(hex: 0xf1f3f8)
                    ),
                    Category(name: "Optometrist",
                             iconName: "eyeglasses",
                             foreground: Color(hex: 0x4695ff),
                             background: Color(hex: 0xaaceff)
                            ),
                    Category(name: "Pediatrician",
                     iconName: "bandage.fill",
                     foreground: Color(hex: 0x3ee0d9),
                     background: Color(hex: 0xd8f9f7)
                    ),
                    Category(name: "Surgeon",
                     iconName: "scissors",
                     foreground: Color(hex: 0xcb62f3),
                     background: Color(hex: 0xecccf9)
                    ),
                    Category(name: "Physicians",
                     iconName: "thermometer",
                     foreground: Color(hex: 0xc4c5c5),
                     background: Color(hex: 0xf1f3f8)
                    ),
                    ]


struct Category: Identifiable{
    var id = UUID()
    var name : String
    var iconName : String
    var foreground : Color
    var background : Color
}




