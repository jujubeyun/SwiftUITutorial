//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/14/24.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}
