//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Yaroslav Shlapak on 04.06.2021.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
            }
            
            Text("Notifications: \(profile.perefersNotifications ? "On" : "Off")")
            Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
            Text("Goal Date: ") + Text(profile.goalDate, style: .date)
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Completed Badges")
                    .font(.headline)
                ScrollView(.horizontal) {
                    HStack {
                        HikeBadge(name: "First hike")
                        HikeBadge(name: "Earth Day")
                            .hueRotation(/*@START_MENU_TOKEN@*/Angle(degrees: 90)/*@END_MENU_TOKEN@*/)
                        HikeBadge(name: "Tenth Hike")
                            .grayscale(0.50)
                            .hueRotation(Angle(degrees: 45))
                    }
                    .padding(.bottom)
                }
            }
            
            Divider()
            
            VStack(alignment: .leading) {
                Text("Recent Hikes")
                    .font(.headline)
                
                HikeView(hike: modelData.hikes[0])
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
