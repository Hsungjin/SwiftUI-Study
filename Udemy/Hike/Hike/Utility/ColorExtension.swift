//
//  ColorExtension.swift
//  Hike
//
//  Created by 황성진 on 11/29/23.
//

import Foundation
import SwiftUI

// 커스텀 컬러의 좋은 사용 예시
// 기존의 asset custom color 사용법 - Color("ColorGreenLight")
// 이렇게 사용하면 자동완성이 안될 뿐만아니라 오타가 발생할 가능성이 크다.
// extenstion 에 정의를 해주어 사용하게되면 자동완성이 되어 오타 발생 가능성이 낮아진다.
// Color.customGreenLight

extension Color {
    static let customGreenLight = Color("ColorGreenLight")
    static let customSalmonLight = Color("ColorSalmonLight")
    static let customIndigoMedium = Color("ColorIndigoMedium")
    static let customGreenMedium = Color("ColorGreenMedium")
    static let customGreenDark = Color("ColorGreenDark")
    static let customGrayLight = Color("ColorGrayLight")
    static let customGrayMedium = Color("ColorGrayMedium")
}
