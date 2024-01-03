//
//  MapView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - PROPERTY
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
//    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - BODY
    var body: some View {
        // MARK: - 1. BASICMAP
                Map(coordinateRegion: $region)
        
        // MARK: - 2. ADVANCED MAP
//        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: {
//            item in
            // (A) PIN: OLD STYLE (always static)
            // MapPin(coordinate: item.location, tint: .accentColor)
            
            // (B) MARKER: NEW STYLE (always static)
//            Marker(coordinate: item.location, tint: .accentColor)
            
            // (C) CUSTOM BASIC ANNOTATION
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//            } //: ANNOTATION
//        })
    
    }
}

#Preview {
    MapView()
}
