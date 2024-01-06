//
//  HeaderDeatilView.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import SwiftUI

struct HeaderDeatilView: View {
    // MARK: - PROPERTY
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundStyle(.white)
    }
}

#Preview {
    HeaderDeatilView()
        .environmentObject(Shop())
}
