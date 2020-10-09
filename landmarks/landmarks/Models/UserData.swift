//
//  UserData.swift
//  landmarks
//
//  Created by Luqman Abdurrohman on 10/7/20.
//  Copyright © 2020 Luqman Abdurrohman. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

final class UserData: ObservableObject{
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
}


