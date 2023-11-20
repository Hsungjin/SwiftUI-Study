//
//  ViewEX.swift
//  Component
//
//  Created by 황성진 on 11/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    
    var body: some View {
        Image(systemName: "bolt")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200, alignment: .leading)
            .background(.gray)
    }

}
    // Modifier(padding)
//        Image(systemName: "bolt")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 100)
//            .padding([.bottom, .top], 100)
//            .background(.green)
//            .foregroundStyle(.red)
//
//        Image(systemName: "bolt")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 100)
//            .padding(.leading, 100)
//            .background(.green)
//            .foregroundStyle(.red)
//    }
        
        
        // State 변수
//        VStack {
//            Text("hi \(name)")
//        }
//        
//        Button(action: {
//            name = "sungjin"
//        }, label: {
//            Text("Click")
//        })
        
        
        // ㅍiew 에 대한 설명
//        MyViewEX()
//
//        Button {
//            print("View")
//        } label: {
//            MyViewEX()
//        }
                            

//struct MyViewEX: View {
//    var body: some View {
//        Text("Hi sungjin")
//    }
//}

#Preview {
    ContentView()
}
