//
//  MyOptional.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/16/23.
//

import SwiftUI

struct MyOptional: View {
    
    let name: String
    let age: Int?
    
    
    var body: some View {
        
        VStack {
            Text(name)
            
            if let age = age {
                Text(age.description)
            }
            
            // age 가 nil 이면 age에 100 할당
//            Text(age?.description ?? "100")
        }
    }
}

#Preview {
    MyOptional(name: "SungJin", age: nil)
}
