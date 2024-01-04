//
//  AnimalGridItemView.swift
//  Africa
//
//  Created by 황성진 on 1/4/24.
//

import SwiftUI

struct AnimalGridItemView: View {
    // MARK: - PROPERTY
    let animal: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

//#Preview {
//    AnimalGridItemView()
//}
