//
//  EmptyState.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/14/24.
//

import SwiftUI

struct EmptyState: View {
    
    let imageName: String
    let message: String
    
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text(message)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding()
            }
            .offset(y: -50)
        }
        
    }
}

#Preview {
    EmptyState(imageName: "empty-order",
               message: "This is a test message.\n\nThis view is made for showing empty state to users.")
}
