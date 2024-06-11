//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Juhyun Yun on 6/11/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .padding(.bottom, 60)
                Label("Scanned Barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text("Not Yet Scanned")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.green)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
        }
    }
}

#Preview {
    BarcodeScannerView()
}
