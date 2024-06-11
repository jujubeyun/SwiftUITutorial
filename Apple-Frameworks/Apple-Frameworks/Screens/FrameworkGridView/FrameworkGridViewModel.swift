//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/10/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
