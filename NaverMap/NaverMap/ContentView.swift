//
//  ContentView.swift
//  NaverMap
//
//  Created by 황성진 on 12/28/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var coordinator: Coordinator = Coordinator.shared
    @StateObject var firestoreManager = FireStoreManager()
    
    var body: some View {
        ZStack {
            VStack {
                NaverMap()
//                NaverMap().setmark(lat: firestoreManager.mylat, lng: firestoreManager.mylng)
                    .ignoresSafeArea(.all, edges: .top)
            }
            Spacer()

        }
        .onAppear {
            Coordinator.shared.checkIfLocationServiceIsEnabled()
            Task {
                await firestoreManager.fetchData()
//                Coordinator.shared.setMarker(lat: firestoreManager.mylat, lng: firestoreManager.mylng)
                for item in firestoreManager.myDataModels {
//                    print(firestoreManager.myLocation[i].latitude)
                    Coordinator.shared.setMarker(lat: item.location.latitude, lng: item.location.longitude, name: item.name)
                }
            }
        }
    }
}

//
//#Preview {
//    ContentView()
//}
