//
//  DividerEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct DividerEX: View {
    var body: some View {
        Divider()
        HStack {
            Image(systemName: "heart")
            Divider()
                .frame(height: 30)
            Text("sungjin!")
            Divider()
                .frame(height: 30)
            
        }
        Divider()
            .background(.red)
            .frame(width: 150)
        
        
        HStack {
            Image(systemName: "bolt")
            Divider()
                .frame(height: 30)
            Text("Olivia")
            Divider()
                .frame(height: 30)
        }
        Divider()
    }
}

#Preview {
    DividerEX()
}
