//
//  AppearEX.swift
//  Component
//
//  Created by 황성진 on 11/22/23.
//

import SwiftUI

struct AppearEX: View {
    
    @State var name: String = "Noname"
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text(name)
                .onAppear() {
                    print("On Appear")
                }
                .onDisappear() {
                    print("On DisAppear")
                }
                .sheet(isPresented: $isPresented, content: {
                    Text("Modal")
            })
            
            Button {
                isPresented.toggle()
            } label: {
                Text("gg")
                    .onAppear() {
                        print("On Appear2")
                    }
                    .onDisappear() {
                        print("On DisAppear2")
                    }
            }
            
            NavigationView {
                NavigationLink("Test") {
                    Text("simple")
                        .onAppear() {
                            print("On Appear3")
                        }
                        .onDisappear() {
                            print("On Disappear3")
                        }
                }
            }
            
        }
    }
}

#Preview {
    AppearEX()
}
