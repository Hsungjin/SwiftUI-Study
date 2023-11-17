//
//  MyMethod.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

func returnSungjin() -> String {
    return "sungjin"
}

// 메소드 = enum, struct, class 안에서 사용하는 함수

struct MyMethod: View {
    var body: some View {
        Text(returnSungjin())
        Text(returnSungjin2())
    }
    
    func returnSungjin2() -> String {
        return "sungjin2"
    }
}

#Preview {
    MyMethod()
    returnSungjin()
    //returnSungjin2() 는 MyMethod 구조체에서 사용되었기때문에 사용불가
//    returnSungjin2()
    returnSungjin3()
    
//    var sungjin = MyMethod()
//    sungjin.returnSungjin2()

    
    func returnSungjin3() -> String {
        return "sungjin3"
    }
}
