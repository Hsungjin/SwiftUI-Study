//
//  InsetGalleryView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - PROPERTY
    
    let animals: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animals.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                } //: LOOP
            } //: HSTACK
        } //: SCROLL
    }
}
