//
//  FruitDetailView.swift
//  Fruits
//
//  Created by 황성진 on 12/30/23.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK: - PROPERTY
    
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } //: VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } //: VSTACK
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } //: SCROLL
            .edgesIgnoringSafeArea(.top)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitsData[0])
}
