//
//  AlertEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct AlertEX: View {
    
    @State var isShowingAlert: Bool = false
    
    var body: some View {
        Button {
            isShowingAlert = true
        } label: {
            Text("Show alert!")
        }
        .alert(isPresented: $isShowingAlert) {
            Alert(title: Text("This is alert"),
//                  primaryButton: .default(Text("OK1")),
//                  secondaryButton: .default(Text("Ok2")) )
                  primaryButton: .default(Text("OK4")),
                  secondaryButton: .default(Text("Ok3")) )
        }

    }
}

#Preview {
    AlertEX()
}
