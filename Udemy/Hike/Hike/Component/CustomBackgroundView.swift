//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by 황성진 on 11/29/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPTH
            // offset x, y 를 이용해서 뷰를 이동시킬 수 있다.
            
            // 두가지 컬러의 사용 예시에 따른 차이는 Utility/ColorExtension 파일에 정의
//            Color("ColorGreenDark")
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            // MARK: - 2. LIGHT
            // opacity = 투명도 값이 클수록 투명도가 낮음
//            Color("ColorGreenLight")
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            // MARK: - 1. SURFACE
            LinearGradient(
                colors: [Color.customGreenLight, Color.customGreenMedium],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding()
}
