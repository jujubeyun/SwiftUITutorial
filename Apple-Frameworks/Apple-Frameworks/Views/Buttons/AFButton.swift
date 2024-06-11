//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/10/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .frame(width: 280, height: 50)
            .background(.red)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Learn More")
}
