//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Juhyun Yun on 5/28/24.
//

import SwiftUI

@main // 앱의 진입점
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
