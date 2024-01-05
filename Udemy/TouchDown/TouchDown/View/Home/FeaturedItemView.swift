//
//  FeaturedItemView.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import SwiftUI

struct FeaturedItemView: View {
    let playerModel: PlayerModel
    
    var body: some View {
        Image(playerModel.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

#Preview {
    FeaturedItemView(playerModel: playerModel[0])
}
