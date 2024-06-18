//
//  Location.swift
//  SightseeingApp
//
//  Created by Juhyun Yun on 6/18/24.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
    
    // 모든 속성이 같은 Location을 2개 만들거라서 UUID를 사용하지 않았다.
    var id: String {
        name + cityName
    }
}
