//
//  ColorView.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct ColorEX: View {
    var body: some View {
//        Color(.blue).edgesIgnoringSafeArea([.top, .bottom])
        
//        Color(.blue)
//            .frame(width: 300,height: 200)
//            .clipShape(RoundedRectangle(cornerRadius: 25.0))
        
        Text("Hello sungjin")
            .background(.blue)
        
        Color("sungjinColor")
    }
}

#Preview {
    ColorEX()
}
