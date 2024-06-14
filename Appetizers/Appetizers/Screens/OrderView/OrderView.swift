//
//  OrderView.swift
//  Appetizers
//
//  Created by Juhyun Yun on 6/12/24.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems: [Appetizer] = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    
                    Button {
                        
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 20)
                }
                
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\nPlease add an appetizer!")
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

#Preview {
    OrderView()
}
