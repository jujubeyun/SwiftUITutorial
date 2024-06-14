//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Juhyun Yun on 6/10/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    @ObservedObject var viewModel: FrameworkDetailViewModel
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: viewModel.framework)
            
            Text(viewModel.framework.description)
                .padding()
                .font(.body)
            
            Spacer()
            
            Link(destination: URL(string: viewModel.framework.urlString)!) {
                AFButton(title: "Learn More")
            }
            
//            Button {
//                viewModel.isShowingSafariView = true
//            } label: {
//                AFButton(title: "Learn More")
//            }
        }
//        .fullScreenCover(isPresented: $viewModel.isShowingSafariView) {
//            SafariView(url: URL(string: viewModel.framework.urlString)!)
//        }
    }
}

#Preview {
    FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework))
}
