//
//  Loop.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Loop: View {
    
    let exampleArray: [String] = ["a", "b", "c", "d"]
    
    var body: some View {
        VStack {
            
            ForEach(exampleArray, id:\.self) { index in
                Text("\(index)")
            }
            
            ForEach(0..<4) { number in
                Text(number.description)
                Text(exampleArray[number])
            }
        }
    }
}

#Preview {
    Loop()
}
