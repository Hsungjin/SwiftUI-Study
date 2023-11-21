//
//  NaviagationStackEX.swift
//  Component
//
//  Created by 황성진 on 11/22/23.
//

import SwiftUI

struct NaviagationStackEX: View {
    var body: some View {
        NavigationStack {
            
            NavigationLink(value: 3) {
                Text("text3")
            }
            .navigationDestination(for: Int.self) { value in
                Text("Sung jin tried \(value) times")
            }
        }
    }
}

#Preview {
    NaviagationStackEX()
}
