//
//  Variable.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Variable: View {
    
    // name 변수(저장공간) 선언을 통해서 VStack 에서 출력
    let name = "Hi sungjin!"
    
    var body: some View {
        // Text는 문자열을 출력해 줄수 있다
        Text("Hi sungjin!")
        
        //Vertical(수직) 으로 묶어서 출력할 수 있따
        VStack {
            Text(name)
            Text(name)
            Text(name)
        }
    }
}

#Preview {
    Variable()
}
