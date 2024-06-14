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
