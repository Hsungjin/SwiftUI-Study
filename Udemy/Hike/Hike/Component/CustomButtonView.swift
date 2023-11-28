//
//  CustomButtonView.swift
//  Hike
//
//  Created by 황성진 on 11/29/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(colors: [.white, .customGreenLight, .customGreenMedium],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
            Circle()
                .stroke(LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                       startPoint: .top,
                                       endPoint: .bottom),
                        lineWidth: 4)
            
            // 이미지 뷰에도 font 옵션 사용가능
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium],
                                   startPoint: .top,
                                   endPoint: .bottom)
                )
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
