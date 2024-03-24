//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 川口美咲 on 2024/03/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
