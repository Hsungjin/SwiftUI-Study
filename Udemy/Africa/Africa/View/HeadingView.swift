//
//  HeadingView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - PROPERTY
    
    var headingImage: String
    var headingText: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - PREVIEW
#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
