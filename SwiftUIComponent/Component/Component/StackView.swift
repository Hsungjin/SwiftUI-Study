//
//  StackView.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("1")
            Text("2")
            Text("3")
                .background(.blue)
            
            Text("1")
            Text("2")
            Text("3")
                .background(.blue)
            
            Text("1")
            Text("2")
            Text("3")
                .background(.blue)
            
            Text("1")
            Text("2")
            Text("3")
                .background(.blue)
            
            Text("1")
            Text("2")
            Text("3")
                .background(.blue)
        }
        .frame(width: 300, height: 300, alignment: .leading)
        .background(.orange)
        
        
//        ZStack {
//            Color.blue
//            Text("1")
//        }
//        
//        HStack {
//            Text("1")
//            Text("2")
//            Text("3")
//        }
//        
//        VStack {
//            Text("1")
//            Text("2")
//            Text("3")
//        }
        
    }
}

#Preview {
    StackView()
}
