//
//  ControlImageView.swift
//  Pinch
//
//  Created by 황성진 on 12/20/23.
//

import SwiftUI

struct ControlImageView: View {
    let icon: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .font(.system(size: 36))
        }
    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .padding()
}
