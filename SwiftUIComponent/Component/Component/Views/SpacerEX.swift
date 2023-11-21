//
//  SpacerEX.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct SpacerEX: View {
    var body: some View {
        VStack {
            Image(systemName: "bolt")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
                .background(.teal)
            
            Spacer()
            
            HStack {
                Image(systemName: "heart")
                Spacer()
                Text("Heart!")
            }
            .padding(.horizontal, 100)
            
            Spacer()
            
            Button(action: {
                print("Blink!")
            }, label: {
                Text("Hit!")
            })
        }
    }
}

#Preview {
    SpacerEX()
}
