//
//  SettingLableView.swift
//  Fruits
//
//  Created by 황성진 on 12/31/23.
//

import SwiftUI

struct SettingLableView: View {
    // MARK: - PROPERTY
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingLableView(labelText: "Fructus", labelImage: "info.circle")
}
