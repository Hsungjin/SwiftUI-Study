//
//  CoverImageView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - PROPERTY
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - PREVIEW
#Preview {
    CoverImageView()
}
