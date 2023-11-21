//
//  NavigationViewEX.swift
//  Component
//
//  Created by 황성진 on 11/22/23.
//

import SwiftUI

struct NavigationViewEX: View {
    var body: some View {
        NavigationView {
            
            NavigationLink(destination: Text("My View1")) {
                ZStack {
                    Color.green
                    Text("test")
                }
            }
            .navigationTitle("Hello")
        }
    }
}

#Preview {
    NavigationViewEX()
}
