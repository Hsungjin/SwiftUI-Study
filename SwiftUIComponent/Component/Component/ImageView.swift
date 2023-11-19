//
//  ImageView.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
//        Image("rabbit")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 200, height: 300)
//            .clipped()
//            .background(.orange)
//            .border(.blue, width: 7)
        
        Image(systemName: "sun.min")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 100, height: 100)
        
    }
}

#Preview {
    ImageView()
}
