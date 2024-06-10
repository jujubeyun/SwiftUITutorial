//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        FrameworkTitleView(name: "App Clips", imageName: "app-clip")
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // give the ability to shrink if needed
                .minimumScaleFactor(0.6) // it can shrink until 60% of original size
        }
    }
}
