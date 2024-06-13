//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/12/24.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject private var viewModel = AppetizerListViewModel()
    @State var isShowingDetail = false
    @State var selectedAppetizer: Appetizer?
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                            selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .onAppear {
                viewModel.getAppetizers()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer ?? MockData.sampleAppetizer, isShowingDetail: $isShowingDetail)
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
            
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AppetizerListView()
}
