//
//  ContentView.swift
//  Restart
//
//  Created by 황성진 on 12/3/23.
//

import SwiftUI

struct ContentView: View {
    // 처음 시작은 ContentView로 시작
    // AppStorage를 이용해서 뷰간의 전환을 함
    
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
