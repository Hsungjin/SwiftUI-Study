//
//  CardView.swift
//  Hike
//
//  Created by 황성진 on 11/29/23.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        // MARK: - CARD

        ZStack {
            CustomBackgroundView()
            
            VStack {
                // MARK: - HEADER

                VStack {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [Color.customGrayLight, Color.customGrayMedium], startPoint: .top, endPoint: .bottom)
                        )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and familes")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundStyle(Color.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30)
                // MARK: - MAIN CONTENT

                
                ZStack {
                    Circle()
                        .fill(
                            // 그라디언트로 색상 넣는 방법
                            LinearGradient(
                                colors: [Color("ColorIndigoMedium"), Color("ColorSalmonLight")],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                
                // MARK: - FOOTER

            }
        }
        //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
