//
//  TouchDownApp.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
