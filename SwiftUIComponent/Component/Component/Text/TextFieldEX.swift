//
//  TextFieldEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct TextFieldEX: View {
    
    @State var userID: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ID")
            TextField("Enter your ID", text: $userID)
                .textFieldStyle(.roundedBorder)
        }
        .padding()
    }
}

#Preview {
    TextFieldEX()
}
