//
//  ContentView.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var inputNumber: String = ""
    
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
