//
//  DialButton.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct DialButton: View {
    
    // dialNumber 상수를 선언하고 타입은 Dial로 선언
    let dialNumber: Dial
    // ContentView에 선언된 State 변수를 해당 뷰에서 Binding 하여 사용
    @Binding var inputNumber: String
    
    var body: some View {

        Button {

        } label: {
            VStack(spacing: 0) {
                // dialNumber.mainNumber 가 전화 모양으로 입력되면 조건문
                if dialNumber.mainNumber == "Phone" {
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .onTapGesture {
                            print("hihi")
                        }
                    // dialNumber.mainNumber가 Delete일시의 조건문
                } else if dialNumber.mainNumber == "Delete"{
                    Image(systemName: "delete.left.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(.gray)
                    // 이외 조건은 Text로 버튼뷰 출력
                } else {
                    Text(dialNumber.mainNumber)
                        .font(.system(size: 30))
                        .padding(.vertical, -5)
                }
                
                // 키패드 하단의 알파벳 표시
                HStack(spacing: 0) {
                    ForEach(dialNumber.subAlphabet, id: \.self) { item in
                        Text(item)
                            .font(.system(size: 10))
                    }
                }
            }
            // buttonColor는 옵셔널 값으로 기본 칼라는 .gray 값을 입력한 경우에만 컬러가 나온다.
            // ex) Phone, Delete
            .foregroundStyle(.white)
            .frame(width: 65, height: 65)
            .background(dialNumber.buttonColor)
            .clipShape(Circle())
        }
        // simultaneousGesture 를 통해 버튼 제스쳐 여러가지를 선언할 수 있다.
        // 아래 예제는 LongPressGesture(), TapGesture() 두개를 사용
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
