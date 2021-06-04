//
//  Profile.swift
//  Landmarks
//
//  Created by Yaroslav Shlapak on 04.06.2021.
//

import Foundation

struct Profile {
    var username: String
    var perefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "y_shlapak")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { self.rawValue }
    }
}
