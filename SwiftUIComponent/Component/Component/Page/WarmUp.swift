//
//  WarmUp.swift
//  Component
//
//  Created by 황성진 on 11/22/23.
//

import SwiftUI

struct WarmUp: View {
    
    @State var userID: String = ""
    @State var userPassword: String = ""
    @State var hasLoggedIn: Bool = false
    @State var hasShownPassword: Bool = false
    
    var body: some View {
        VStack {
            
            HStack {
                Label(
                    title: {
                        Text("ID : ")
                    },
                    icon: { Image(systemName: "person.fill") }
                )
                
                TextField("enter ID", text: $userID)
            }
            Divider()
            HStack {
                Label(title: {
                    Text("PW : ")
                }, icon: {
                    Image(systemName: "lock.fill")
                })
                
                if hasShownPassword {
                    TextField("enter password", text: $userPassword)
                    Spacer()
                } else {
                    SecureField("enter password", text: $userPassword)
                    Spacer()
                }

                
                Toggle(isOn: $hasShownPassword, label: {
                    Text("Show")
                })
                
            }
            
            Button {
                if userID == "1234" && userPassword == "1234" {
                    hasLoggedIn = true
                } else {
                    hasLoggedIn = false
                }
            } label: {
                Text("Sign in")
                    .padding()
                    .background(.green)
            }
        }
        .padding()
        .sheet(isPresented: $hasLoggedIn, content: {
            Text("Hello Sngjin Welcome")
        })
    }
}

#Preview {
    WarmUp()
}
