//
//  FruitsNutritens.swift
//  Fruits
//
//  Created by 황성진 on 12/31/23.
//

import SwiftUI

struct FruitsNutritens: View {
    // MARK: - PROPERTY
    
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Suger", "Fat", "Proetin", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        
        GroupBox() {
            DisclosureGroup("Nurtritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundStyle(fruit.gradientColors[1])
                        .font(.body)
                        .fontWeight(.bold)
                        
                        Spacer(minLength: 70)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

// MARK: - PREVIEW
#Preview {
    FruitsNutritens(fruit: fruitsData[0])
}
