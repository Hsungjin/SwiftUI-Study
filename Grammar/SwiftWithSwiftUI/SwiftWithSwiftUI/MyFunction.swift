//
//  MyFunction.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct MyFunction: View {
    
    @State var myMind: String = "nothing"
    @State var isChanged: Bool = false
    
    var body: some View {
        VStack{
            Text(myMind)
            
            Button{
                isChanged.toggle()
                
                myMind = getMind(isChanged: isChanged)
                
//                if isChanged {
//                    myMind = "always open"
//                } else {
//                    myMind = "but closed"
//                }
                
            } label: {
                Text("Change my mind!")
            }
        }
    }
    
    func getMind(isChanged: Bool) -> String {
        if isChanged {
            return "always open"
        } else {
            return "but closed"
        }
    }
}

#Preview {
    MyFunction()
}
