//
//  Dial.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import Foundation
import SwiftUI

struct Dial: Identifiable, Hashable {
    var id = UUID()
    var mainNumber: String
    var subAlphabet: [String]
    var buttonColor: Color? = .gray
}

var dialDummy = [[Dial(mainNumber: "1",
                       subAlphabet: ["","",""]),
                  Dial(mainNumber: "2",
                       subAlphabet: ["A","B","C"]),
                  Dial(mainNumber: "3",
                       subAlphabet: ["D","E","F"])],
                 [Dial(mainNumber: "4",
                       subAlphabet: ["G","H","I"]),
                  Dial(mainNumber: "5",
                       subAlphabet: ["J","K","L"]),
                  Dial(mainNumber: "6",
                       subAlphabet: ["M","N","O"])],
                 [Dial(mainNumber: "7",
                       subAlphabet: ["P","Q","R","S"]),
                  Dial(mainNumber: "8",
                       subAlphabet: ["T","U","V"]),
                  Dial(mainNumber: "9",
                       subAlphabet: ["W","X","Y","Z"])],
                 [Dial(mainNumber: "*",
                       subAlphabet: ["","",""]),
                  Dial(mainNumber: "0",
                       subAlphabet: ["+"]),
                  Dial(mainNumber: "#",
                       subAlphabet: ["","",""])],
                 [Dial(mainNumber: "",
                       subAlphabet: [],
                       buttonColor: .white),
                 Dial(mainNumber: "Phone",
                       subAlphabet: [],
                      buttonColor: .green),
                 Dial(mainNumber: "Delete",
                       subAlphabet: [],
                       buttonColor: .white)]
]


