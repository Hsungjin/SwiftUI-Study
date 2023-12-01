//
//  CardView.swift
//  Hike
//
//  Created by 황성진 on 11/29/23.
//

import SwiftUI

struct CardView: View {
    // MARK: - PROPERTIES

    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - FUNCTIONS

    func randomImage() {
        print("----- BUTTON WAS PRESSED -----")
        print("Status: Old Image Number = \(imageNumber)")
        
        repeat {
            randomNumber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(randomNumber)")
        } while randomNumber == imageNumber
                    
        imageNumber = randomNumber
        
        print("Result: New Image Number = \(imageNumber)")
        print("---- The End ----")
        print("\n")
    }
    
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
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                            // medium - 화면의 50프로 까지 펼쳐짐
                            // large - 확장시 100프로 까지 펼쳐짐
                                .presentationDetents([.medium, .large])
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
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                    // value 값이 바뀔때 한번 시행됨
                        .animation(.default, value: imageNumber)
                }
                
                // MARK: - FOOTER

                Button {
                    // ACTION: Generate a random number
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGreenMedium],
                                startPoint: .top,
                                endPoint: .bottom
                            )
                        )
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradiantButton())
            } //: ZSTACK
        }
        //: CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
