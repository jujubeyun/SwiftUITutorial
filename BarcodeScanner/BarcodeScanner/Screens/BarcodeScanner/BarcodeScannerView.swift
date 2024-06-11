//
//  BarcodeScannerView.swift
//  BarcodeScanner
//
//  Created by Juhyun Yun on 6/11/24.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .padding(.bottom, 60)
                Label("Scanned Barcode :", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(viewModel.statusText)
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(viewModel.statusTextColor)
                    .padding()
            }
            .navigationTitle("Barcode Scanner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
            }
        }
    }
}

#Preview {
    BarcodeScannerView()
}
