//
//  LocationsViewModel.swift
//  SightseeingApp
//
//  Created by Juhyun Yun on 6/18/24.
//

import Foundation

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init() {
        locations = LocationsDataService.locations
    }
}
