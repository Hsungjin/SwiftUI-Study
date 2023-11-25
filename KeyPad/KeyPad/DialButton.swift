//
//  DialButton.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct DialButton: View {
    
    let dialNumber: Dial
    @Binding var inputNumber: String
    
    var body: some View {

        Button {

        } label: {
            VStack(spacing: 0) {
                if dialNumber.mainNumber == "Phone" {
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .onTapGesture {
                            print("hihi")
                        }
                } else if dialNumber.mainNumber == "Delete"{
                    Image(systemName: "delete.left.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(.gray)
                } else {
                    Text(dialNumber.mainNumber)
                        .font(.system(size: 30))
                        .padding(.vertical, -5)
                }
                
                HStack(spacing: 0) {
                    ForEach(dialNumber.subAlphabet, id: \.self) { item in
                        Text(item)
                            .font(.system(size: 10))
                    }
                }
            }
            .foregroundStyle(.white)
            .frame(width: 65, height: 65)
            .background(dialNumber.buttonColor)
            .clipShape(Circle())
        }
        .simultaneousGesture(LongPressGesture().onEnded { _ in
            if dialNumber.mainNumber == "0" {
                inputNumber += "+"
            } else if dialNumber.mainNumber != "Phone" && dialNumber.mainNumber != "Delete" {
                inputNumber += dialNumber.mainNumber
                } else {
                inputNumber += dialNumber.mainNumber
            }
        })
        .simultaneousGesture(TapGesture().onEnded { _ in
            if dialNumber.mainNumber != "Phone" && dialNumber.mainNumber != "Delete" {
                inputNumber += dialNumber.mainNumber
            } else if dialNumber.mainNumber == "Delete" {
                    // 두가지 방법 사용가능
    //                if inputNumber.count > 0 {
    //                    inputNumber.removeLast()
    //                }
                    inputNumber = String(inputNumber.dropLast())
            }
        })
        .padding(.all, 6)
    }
}

#Preview {
    ContentView()
}
