//
//  NaverMap.swift
//  NaverMap
//
//  Created by 황성진 on 12/28/23.
//

import SwiftUI
import NMapsMap

struct NaverMap: UIViewRepresentable {
    
    func makeCoordinator() -> Coordinator {
        Coordinator.shared
    }
//    
//    func setmark(lat: Double, lng: Double) {
//        Coordinator.shared.setMarker(lat: lat, lng: lng)
//    }
    
    func makeUIView(context: Context) -> NMFNaverMapView {
        context.coordinator.getNaverMapView()
    }
    
    func updateUIView(_ uiView: NMFNaverMapView, context: Context) {}
    
}
