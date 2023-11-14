//
//  Variable2.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/15/23.
//

import SwiftUI

struct Variable2: View {
    
    
    // 옵션키 + 클릭 = 공식문서에서 찾아볼 수 있다
    // 타입 어노테이션을 하지 않고 선언하는 방법
    // name은 문자열
    // age는 정수형으로 각 타입이 일치할시 사칙연산 가능
    // Float, Double 은 소수점 출력가능
    // Bool 타입은 true or false 상태만 갖는다
    
    let name: String = "sungjin" + "1"
    let age: Int = 20 + 1
    let height: Float = 185.3
    let hasJob: Bool = true
    
    var body: some View {
        
        // 문자열 보간법을 통한 출력 방법
        Text("Hello \(name) \(age) \(height) \(hasJob.description)")
    }
}

#Preview {
    Variable2()
}
