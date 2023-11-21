//
//  SwiftUIView.swift
//  Component
//
//  Created by 황성진 on 11/22/23.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            HStack {
                Text(Image(systemName: "bolt"))
                Text("Sungjin")
            }
            
            
            Label("SungJin", systemImage: "lock")
        }
    }
}

#Preview {
    SwiftUIView()
}
