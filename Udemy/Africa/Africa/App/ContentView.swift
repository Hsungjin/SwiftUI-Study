//
//  ContentView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTY
    
    let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animals: animal)) {
                        AnimalListItemView(animals: animal)
                    } //: LINK
                }
            } //: LIST
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    ContentView()
}
