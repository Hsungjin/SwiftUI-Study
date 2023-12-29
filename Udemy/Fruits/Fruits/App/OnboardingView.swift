//
//  OnboardingView.swift
//  Fruits
//
//  Created by 황성진 on 12/29/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                FruitCardView(fruit: item)
            } //: LOOP
        } //: TABVIEW
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
#Preview {
    OnboardingView()
}
