//
//  ScrollView.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct ScrollViewEX: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                Text("1")
                    .frame(width: 300, height: 500)
                    .background(.red)
                Text("2")
                    .frame(width: 300, height: 500)
                    .background(.blue)
                Text("3")
                    .frame(width: 300, height: 500)
                    .background(.orange)
            }
        }
        .background(.teal)
    }
}

#Preview {
    ScrollViewEX()
}
