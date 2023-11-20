//
//  ModalEX.swift
//  Component
//
//  Created by 황성진 on 11/21/23.
//

import SwiftUI

struct ModalEX: View {
    
    @State var isShowingModal: Bool = false
    
    
    var body: some View {
        Text("Sung Jin!")
        
        Button(action: {
            isShowingModal = true
        }, label: {
            Text("Call modal")
        })
//        .sheet(isPresented: $isShowingModal, content: {
//            ZStack(content: {
//                Color.orange.ignoresSafeArea()
//                Text("Modal View")
//            })
//        })
        .fullScreenCover(isPresented: $isShowingModal, content: {
            ZStack {
                Color.orange.ignoresSafeArea()
                VStack {
                    Text("Modal View")
                    Button {
                        isShowingModal = false
                    } label: {
                        Text("dismiss")
                    }
                }
            }
        })
    }
}

#Preview {
    ModalEX()
}
