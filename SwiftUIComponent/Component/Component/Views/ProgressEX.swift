//
//  ProgressEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct ProgressEX: View {
    
    @State var progress: Double = 0
    
    var body: some View {
        ProgressView("Loading...", value: progress, total: 100)
            .padding()
        ProgressView()
        
        Button {
            progress += 5
        } label: {
            Text("Go")
        }
    }
}

#Preview {
    ProgressEX()
}
