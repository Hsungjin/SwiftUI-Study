//
//  PageModel.swift
//  Pinch
//
//  Created by 황성진 on 12/20/23.
//

import Foundation

struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumnailName: String {
        return "thumb-" + imageName
    }
}
