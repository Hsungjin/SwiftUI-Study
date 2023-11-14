//
//  Variable3.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Variable3: View {
    // var - 변경가능
    // let - 변경불가능
    
    // 대입 연산자
    let name = "sungjin"
    var age = 20
    
    var anyNumber = 6
    var anyNumber2 = 8
    var anyNumber3 = 6
    
    var body: some View {
        VStack {
            // 사칙 연산자
            Text("\(age + anyNumber)")
            Text("\(age - anyNumber)")
            Text("\(age * anyNumber)")
            Text("\(age / anyNumber)")
            Text("\(age % anyNumber)")
            
            // 비교 연산자(결과가 Bool 값)
            Text("\(anyNumber < anyNumber2)".description)
            Text("\(anyNumber > anyNumber2)".description)
            Text("\(anyNumber <= anyNumber2)".description)
            Text("\(anyNumber >= anyNumber2)".description)
            Text("\(anyNumber == anyNumber3)".description)
            Text("\(anyNumber != anyNumber3)".description)
        }
    }
}

#Preview {
    Variable3()
}
