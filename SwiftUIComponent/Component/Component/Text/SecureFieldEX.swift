//
//  SecureFieldEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct SecureFieldEX: View {
    
    @State var myPassword: String = ""
    @State var isSecureMode: Bool = true
    
    var body: some View {
        VStack {
            Text(myPassword)
            HStack{
                if isSecureMode {
                    SecureField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                } else {
                    TextField("Password", text: $myPassword)
                        .textFieldStyle(.roundedBorder)
                }
                
                Button {
                    isSecureMode.toggle()
                } label: {
                    Image(systemName: "eye")
                }
            }
                          
        }
    }
}

#Preview {
    SecureFieldEX()
}
