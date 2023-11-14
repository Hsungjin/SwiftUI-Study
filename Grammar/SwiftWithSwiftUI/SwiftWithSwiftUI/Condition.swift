//
//  Condition.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Condition: View {
    
    var randomNumber: Int = 4
    
    var body: some View {
    
        if (randomNumber % 2) == 0 {
            Text("짝수")
        } else {
            Text("홀수")
        }

    }
}

#Preview {
    Condition()
}
