//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import SwiftUI

struct CategoryGridView: View {
    // MARK: - PROPERTY
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnsSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockwiss: false), footer: SectionView(rotateClockwiss: true)) {
                    ForEach(categoryModel) { category in
                        CategoryItemView(category: category)
                    }
                }
            }) // GRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        } // SCROLL
    }
}

#Preview {
    CategoryGridView()
}
