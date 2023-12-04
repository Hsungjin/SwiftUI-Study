//
//  CircleGroupView.swift
//  Restart
//
//  Created by 황성진 on 12/5/23.
//

import SwiftUI

struct CircleGroupView: View {
    // MARK: - PROPERTY
    @State var ShapeColor: Color
    @State var ShapeOpacity: Double
    @State private var isAnimationg: Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            Circle()
            // stroke 는 테두리!
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 40)
                .frame(width: 260, height: 260, alignment: .center)
            Circle()
                .stroke(ShapeColor.opacity(ShapeOpacity), lineWidth: 80)
                .frame(width: 260,height: 260, alignment: .center)
        } //: ZSTACK
        .blur(radius: isAnimationg ? 0 : 10)
        .opacity(isAnimationg ? 1 : 0)
        .scaleEffect(isAnimationg ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimationg)
        .onAppear() {
            isAnimationg = true
        }
    }
}

// MARK: - PREVIEW
#Preview {
    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea(.all, edges: .all)
        CircleGroupView(ShapeColor: Color.white, ShapeOpacity: 0.2)
    }
}
