//
//  ContentView.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputNumber: String = ""
    
    // 리펙터를 사용해서 뷰를 나눔
    // inputNumber를 State 변수로 선언하여 표시하고, inputNumber가 없으면 번호추가 Text뷰를 추가
    fileprivate func numberLabelView() -> some View {
        return VStack {
            Text(inputNumber)
                .font(.system(size: 30))
                .padding(.vertical, 10)
            if !inputNumber.isEmpty {
                Text("번호추가")
                    .foregroundStyle(.blue)
            }
        }
        .frame(height: 200)
    }
    
    var body: some View {
        VStack {
            Spacer()
            numberLabelView()
            
            Spacer()
            keypadDialView()
            Spacer()
        }
    }
    
    // ViewBuilder의 첫 사용
    // ViewBuilder func 함수명() -> some View 의 형태로 사용가능
    // ForEach 구문을 통해 dialDummy 2중 배열을 표현
    @ViewBuilder
    func keypadDialView() -> some View {
        ForEach(dialDummy, id: \.self) { items in
            HStack {
                ForEach(items, id: \.self) { item in
                    DialButton(dialNumber: Dial(mainNumber: item.mainNumber,
                                                subAlphabet: item.subAlphabet,
                                                buttonColor: item.buttonColor),
                               inputNumber: $inputNumber)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
