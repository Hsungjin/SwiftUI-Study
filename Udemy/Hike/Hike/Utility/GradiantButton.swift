//
//  GradiantButton.swift
//  Hike
//
//  Created by 황성진 on 12/1/23.
//

import Foundation
import SwiftUI

struct GradiantButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional StateMent with Nil Coalescing
                // Condition ? A : B
                // A: When User pressed the Button
                configuration.isPressed ?
                LinearGradient(
                    colors: [.customGrayMedium, .customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom
                )
                :
                // B: When the Button is not pressed
                LinearGradient(
                    colors: [.customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom
                )
            )
            .cornerRadius(40)
    }
}
