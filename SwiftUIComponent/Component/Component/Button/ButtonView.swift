//
//  ContentView.swift
//  Component
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("hitme")
            }, label: {
                Text("HitMe")
                    .padding()
                    .background(.red)
                    .foregroundStyle(.black)
                    .cornerRadius(13)
            })
            
            Button("Delete", role: .destructive) {
                print("deleted!")
            }
            
            Button("cancel", role: .cancel) {
                print("deleted!")
            }
        }
        .padding()
    }
}

#Preview {
    ButtonView()
}
