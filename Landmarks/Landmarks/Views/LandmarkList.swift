//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Juhyun Yun on 5/29/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // Lists work with identifiable data
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
