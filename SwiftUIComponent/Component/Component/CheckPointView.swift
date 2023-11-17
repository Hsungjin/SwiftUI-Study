//
//  CheckPointView.swift
//  Component
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

struct CheckPointView: View {
    
    @State var isLighthing: Bool = false
    
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                Image(systemName: isLighthing ? "bolt.fill" : "bolt")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                
                Spacer()
                
                HStack {
                    Text("찌릿찌릿")
                    Button {
                        isLighthing.toggle()
                    } label: {
                        Text("번쩍!")
                            .padding()
                            .background(.orange)
                            .cornerRadius(20)
                    }
                }

            }
        }
    }
}

#Preview {
    CheckPointView()
}
