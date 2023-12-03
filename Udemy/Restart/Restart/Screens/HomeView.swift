//
//  HomeView.swift
//  Restart
//
//  Created by 황성진 on 12/3/23.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }
        }//: VSTACK
    }
}

// MARK: - PREVIEW
#Preview {
    HomeView()
}
