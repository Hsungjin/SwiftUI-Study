//
//  TextView.swift
//  Component
//
//  Created by 황성진 on 11/18/23.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        VStack {
            Text("Hello, Sungjin!")
                .bold()
                .italic()
                .strikethrough()
            Text("Hello, Sungjin!")
                .font(.system(size: 60))
            Text("Hello, Sungjin!")
                .underline(true, color: .orange)
                .foregroundStyle(.orange)
            Text("Hello, Sungjin!")
                .foregroundStyle(.green)
//                .bold()
//                .font(.system(size: 39))
                .font(.system(size: 39, weight: .bold, design: .rounded))
        }
    }
}

#Preview {
    TextView()
}
