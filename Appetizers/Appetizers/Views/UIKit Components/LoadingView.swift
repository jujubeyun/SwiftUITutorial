//
//  LoadingView.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/12/24.
//

import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndicatorView = UIActivityIndicatorView(style: .large)
//        activityIndicatorView.color = .brandPrimary
//        activityIndicatorView.startAnimating()
//        return activityIndicatorView
//    }
//    
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {}
//}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimary))
                .scaleEffect(2) // double the original size
        }
    }
}

#Preview {
    LoadingView()
}
