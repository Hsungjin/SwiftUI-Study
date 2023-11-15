//
//  MyOptionalBinding.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/16/23.
//

import SwiftUI

struct MyOptionalBinding: View {
    
    var nickName: String? = nil
    
    var body: some View {
//        Text(nickName!)
        
//        guard let nickName = nickName else {
//            Text("nickName")
//        }
//        Text(nickName)
        
        if let nickName = nickName {
            Text(nickName)
        } else {
            Text("nickName")
        }
        
        Text(nickName ?? "HwangMa")
    }
}

#Preview {
    MyOptionalBinding()
}
