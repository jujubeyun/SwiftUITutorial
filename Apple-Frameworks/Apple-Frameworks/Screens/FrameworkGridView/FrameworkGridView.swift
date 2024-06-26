//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/10/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                let viewModel = FrameworkDetailViewModel(framework: framework)
                FrameworkDetailView(viewModel: viewModel)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
