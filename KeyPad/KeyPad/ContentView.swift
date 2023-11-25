//
//  ContentView.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputNumber: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                Text(inputNumber)
                    .font(.system(size: 30))
                    .padding(.vertical, 10)
                if inputNumber != "" {
                    Text("번호추가")
                        .foregroundStyle(.blue)
                }
            }
            .frame(height: 200)
            Spacer()
            ForEach(dialDummy, id: \.self) { items in
                HStack{
                    ForEach(items, id: \.self) { item in
                        DialButton(dialNumber: Dial(mainNumber: item.mainNumber,
                                                    subAlphabet: item.subAlphabet, 
                                                    buttonColor: item.buttonColor),
                                                    inputNumber: $inputNumber)
                    }
                }
            }
            Button {
                // 숫자가 하나 사라짐
            } label: {
                // 오각형 모양
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
