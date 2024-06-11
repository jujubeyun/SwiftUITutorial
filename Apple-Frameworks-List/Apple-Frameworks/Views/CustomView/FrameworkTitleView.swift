//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit() // give the ability to shrink if needed
                .minimumScaleFactor(0.6) // it can shrink until 60% of original size
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleView(framework: MockData.sampleFramework)
}
