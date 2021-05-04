//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Yaroslav Shlapak on 28.04.2021.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
