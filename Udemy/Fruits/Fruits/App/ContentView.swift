//
//  ContentView.swift
//  Fruits
//
//  Created by 황성진 on 12/29/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    var fuits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                ForEach(fuits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitsRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView(fuits: fruitsData)
}
