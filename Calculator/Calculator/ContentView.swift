//
//  ContentView.swift
//  Calculator
//
//  Created by 황성진 on 11/23/23.
//

import SwiftUI

// 각 버튼 타임에 대하여 열겨형으로 선언
enum ButtonType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
    case comma, equal, plus, minus, multiple, devide
    case percent, opposite, clear
    
    var buttonDisplayName: String {
        switch self {
        case .first :
            return "1"
        case .second:
            return "2"
        case .third:
            return "3"
        case .fourth:
            return "4"
        case .fifth:
            return "5"
        case .sixth:
            return "6"
        case .seventh:
            return "7"
        case .eighth:
            return "8"
        case .nineth:
            return "9"
        case .zero:
            return "0"
        case .comma:
            return "."
        case .equal:
            return "="
        case .plus:
            return "+"
        case .minus:
            return "-"
        case .multiple:
            return "X"
        case .devide:
            return "/"
        case .percent:
            return "%"
        case .opposite:
            return "+/-"
        case .clear:
            return "C"
        }
    }
    
    var backgroundColor: Color {
        switch self {
            
        case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero:
            return Color(.numberButton)

        case .comma, .plus, .equal, .minus, .multiple, .devide:
            return Color(.orange)
            
        case .percent, .opposite, .clear:
            return Color(.gray)
        }
    }
    
    var foregrounColor: Color {
        switch self {
        case .first, .second, .third, .fourth, .fifth, .sixth, .seventh, .eighth, .nineth, .zero, .comma, .plus, .equal, .minus, .multiple, .devide:
            return Color(.white)
        case .percent, .opposite, .clear:
            return Color(.black)
        }
    }
}

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    @State private var tempNumber: Int = 0
    @State private var operatorType: ButtonType = .clear
    // isNotEditing 변수는 해당 계산기에 숫자가 입력되어있는지 안되어있는지를 위한 변수
    @State private var isNotEditing: Bool = true
    
    
    // 열거형으로 선언된 버튼타입을 각 키보드 배열에 맞춰 4개/4개/4개/4개/3개 순으로 2차원 배열을 이용해 사용
    private let buttonData: [[ButtonType]] = [[.clear, .opposite, .percent, .devide],
                                              [.seventh, .eighth, .nineth, .multiple],
                                              [.fourth, .fifth, .sixth, .minus],
                                              [.first, .second, .third, .plus],
                                              [.zero, .comma, .equal]]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text(totalNumber)
                        .padding()
                        .foregroundStyle(.white)
                        .font(.system(size: 60))
                }
                
                // 2중 반복문을 사용해서 buttonData의 데이터를 이용
                ForEach(buttonData, id: \.self) { line in
                    HStack {
                        ForEach(line, id: \.self) { item in
                            
                            Button {
                                if isNotEditing {
                                    if item == .clear {
                                        totalNumber = "0"
                                        isNotEditing = true
                                    } else if item == .plus ||
                                              item == .minus ||
                                              item == .multiple ||
                                              item == .devide {
                                        totalNumber = "Error"
                                    }
                                    else {
                                        totalNumber = item.buttonDisplayName
                                        isNotEditing = false // 입력받고 있는중
                                    }
                                    
                                } else {
                                    if item == .clear {
                                        totalNumber = "0"
                                        isNotEditing = true
                                    } else if item == .plus {
                                        // 숫자를 저장
                                        // 더하기를 수행
                                        // 남은 숫자를 초기화 한다
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .plus
                                        isNotEditing = true // 새로 입력받을 준비가 됨
                                    } else if item == .minus {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .minus
                                        isNotEditing = true
                                    } else if item == .multiple {
                                        tempNumber = Int(totalNumber) ?? 0
                                        operatorType = .multiple
                                        isNotEditing = true
                                    } else if item == .equal{
                                        
                                        if operatorType == .plus {
                                            totalNumber = String((Int(totalNumber) ?? 0) + tempNumber)
                                        }
                                        else if operatorType == .multiple {
                                            totalNumber = String((Int(totalNumber) ?? 0) * tempNumber)
                                        }
                                        else if operatorType == .minus {
                                            totalNumber = String(tempNumber - (Int(totalNumber) ?? 0))
                                        }
                                    } else {
                                        totalNumber += item.buttonDisplayName
                                    }
                                }
                            } label: {
                                Text(item.buttonDisplayName)
                                    .bold()
                                    .frame(width: calculatebuttonWidth(button: item), height: calculatebuttonHeight(button: item))
                                    .background(item.backgroundColor)
                                    .cornerRadius(40)
                                    .foregroundColor(item.foregrounColor)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
            .padding()
        }
    }
    
    private func calculatebuttonWidth(button: ButtonType) -> CGFloat {
        // (전체너비 - 5개의 여백) / 4
        switch button {
        case .zero :
            return (UIScreen.main.bounds.width - 5 * 10) / 4 * 2
            
        default:
            return ((UIScreen.main.bounds.width - 5 * 10) / 4)
        }
    }
    
    private func calculatebuttonHeight(button: ButtonType) -> CGFloat {
        // (전체너비 - 5개의 여백) / 4
        
        return (UIScreen.main.bounds.width - 5 * 10) / 4
    }
}

#Preview {
    ContentView()
}
