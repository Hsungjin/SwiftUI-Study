//
//  DialButton.swift
//  KeyPad
//
//  Created by 황성진 on 11/25/23.
//

import SwiftUI

struct DialButton: View {
    
    let dialNumber: Dial
    @Binding var inputNumber: String
    
    var body: some View {

        Button {
            inputNumber += dialNumber.mainNumber
        } label: {
            VStack(spacing: 0) {
                if dialNumber.mainNumber == "Phone" {
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 24)
                        .foregroundStyle(.white)
                } else {
                    Text(dialNumber.mainNumber)
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                }
                
                HStack(spacing: 0) {
                    ForEach(dialNumber.subAlphabet, id: \.self) { item in
                        Text(item)
                    }
                }
                .font(.system(size: 12))
                .foregroundStyle(.white)
            }

        }
        .frame(width: 65, height: 65)
        .background(dialNumber.buttonColor)
        .clipShape(Circle())
        .padding(.all, 6)
    }
}

#Preview {
    ContentView()
}
