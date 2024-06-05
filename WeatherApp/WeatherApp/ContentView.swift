//
//  ContentView.swift
//  WeatherApp
//
//  Created by Juhyun Yun on 6/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white]), 
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
        }
    }
}

#Preview {
    ContentView()
}
