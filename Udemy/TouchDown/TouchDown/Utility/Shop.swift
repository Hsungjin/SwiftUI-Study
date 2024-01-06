//
//  Shop.swift
//  TouchDown
//
//  Created by 황성진 on 1/6/24.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: ProductModel? = nil
}
