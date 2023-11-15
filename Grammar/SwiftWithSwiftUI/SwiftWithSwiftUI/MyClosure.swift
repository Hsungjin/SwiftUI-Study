//
//  MyClosure.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/16/23.
//

//

import SwiftUI

struct MyClosure: View {
    
    let myFirstClosure: () -> Void = { print("Hi closure") }
    
    let myFirstClosure2: (String) -> Int = { name in
        return 3
    }
    
    func sayHi() -> Void {
        print("Hi function")
    }
    
    func sayHi2(action: () -> ()) -> Void {
        print("HI2 function")
    }
    
    
    var body: some View {
        Button(action: myFirstClosure) {
            Text("Hitme")
        }
        
        Button {
            sayHi()
        } label: {
            Text("Hit")
        }
        
        Button {
            sayHi2 {
            }
        } label: {
            Text("Button")
        }

    }
}

#Preview {
    MyClosure()
}
