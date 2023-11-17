//
//  MyProperty.swift
//  SwiftWithSwiftUI
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

struct MyProperty: View {
    
    @State var koreanMoney: Int = 1000
    // 프로퍼티 - 저장 프로퍼티(변수)와 연산프로퍼티
    
    var japaneseMoney: Int {
        get {
            return koreanMoney / 10
        }
        set {
            koreanMoney = newValue * 10
        }
    }
    
    var body: some View {
        Text("\(koreanMoney.description)원 있습니다.")
        Text("\(japaneseMoney.description)엔 있습니다.")
        
        Button {
            koreanMoney = 2000
        } label: {
            Text("button")
        }
    }
}

#Preview {
    MyProperty()
}
