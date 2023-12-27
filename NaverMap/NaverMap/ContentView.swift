//
//  ContentView.swift
//  NaverMap
//
//  Created by 황성진 on 12/28/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var coordinator: Coordinator = Coordinator.shared
    
    var body: some View {
        VStack {
            NaverMap()
                .ignoresSafeArea(.all, edges: .top)
        }
        .onAppear {
            Coordinator.shared.checkIfLocationServiceIsEnabled()
        }
    }
}

#Preview {
    ContentView()
}
