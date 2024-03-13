//
//  TCA_tutorialApp.swift
//  TCA_tutorial
//
//  Created by 황성진 on 1/12/24.
//

import SwiftUI
import ComposableArchitecture


@main
struct TCA_tutorialApp: App {
    static let store = Store(initialState: AppFeature.State()) {
        AppFeature()
            ._printChanges()
    }
    
    var body: some Scene {
        WindowGroup {
            AppView(store: TCA_tutorialApp.store)
        }
    }
}
