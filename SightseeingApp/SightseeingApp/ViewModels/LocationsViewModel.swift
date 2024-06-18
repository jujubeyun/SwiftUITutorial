//
//  LocationsViewModel.swift
//  SightseeingApp
//
//  Created by Juhyun Yun on 6/18/24.
//

import Foundation
import MapKit
import SwiftUI

class LocationsViewModel: ObservableObject {
    
    @Published var locations: [Location]
    @Published var mapLocation: Location {
        didSet {
            updateRegion(location: mapLocation)
        }
    }
    @Published var cameraPosition = MapCameraPosition.region(MKCoordinateRegion())
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
    
    init() {
        let locations = LocationsDataService.locations
        self.locations = locations
        mapLocation = locations.first!
        updateRegion(location: mapLocation)
    }
    
    private func updateRegion(location: Location) {
        withAnimation(.easeInOut) {
            cameraPosition = MapCameraPosition.region(MKCoordinateRegion(center: location.coordinates, span: mapSpan))
        }
    }
}
