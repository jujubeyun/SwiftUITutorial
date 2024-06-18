//
//  SightseeingAppApp.swift
//  SightseeingApp
//
//  Created by Juhyun Yun on 6/18/24.
//

import SwiftUI

@main
struct SightseeingAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}
