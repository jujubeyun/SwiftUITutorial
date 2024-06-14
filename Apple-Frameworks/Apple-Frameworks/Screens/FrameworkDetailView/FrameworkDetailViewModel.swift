//
//  FrameworkDetailViewModel.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/14/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    @Published var isShowingSafariView = false
    
    init(framework: Framework) {
        self.framework = framework
    }
}
