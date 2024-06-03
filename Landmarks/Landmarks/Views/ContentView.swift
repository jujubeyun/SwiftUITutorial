//
//  ContentView.swift
//  Landmarks
//
//  Created by Juhyun Yun on 5/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
