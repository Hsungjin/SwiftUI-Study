//
//  ToggleEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct ToggleEX: View {
    
    @State var isLightOn: Bool = false
    
    var body: some View {
        Toggle(isOn: $isLightOn) {
            if isLightOn {
                Text("Light On")
            } else {
                Text("Light Off")
            }
        }


//        .toggleStyle(SwitchToggleStyle(tint: .orange))
        .toggleStyle(.switch)
        .tint(.orange)
        .padding()
    }
}

#Preview {
    ToggleEX()
}
