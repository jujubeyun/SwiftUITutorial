//
//  APButton.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/13/24.
//

import SwiftUI

struct APButton: View {
    
    let title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundStyle(.white)
            .background(.brandPrimary)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title: "Test Title")
}
