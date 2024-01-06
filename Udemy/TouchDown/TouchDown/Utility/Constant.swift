//
//  Constant.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import SwiftUI

// DATA
let playerModel: [PlayerModel] = Bundle.main.decode("player.json")
let categoryModel: [CategoryModel] = Bundle.main.decode("category.json")
let productModel: [ProductModel] = Bundle.main.decode("product.json")
let brandModel: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct: ProductModel = productModel[0]

// COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT
let columnsSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// API
// IMAGE
// FONT
// STRING
// MISC
