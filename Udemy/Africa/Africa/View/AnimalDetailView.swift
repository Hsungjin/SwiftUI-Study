//
//  AnimalDetailView.swift
//  Africa
//
//  Created by 황성진 on 1/2/24.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTY
    let animals: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animals.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animals.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(Color.accentColor
                        .frame(height: 6)
                        .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animals.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryView(animals: animals)
                    
                }
                .padding(.horizontal)
                
                // FACTC
                
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animals: animals)
                }
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animals.name)")
                    
                    Text(animals.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView()
                }
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Lear More")
                    
                    ExternalWeblink(animals: animals)
                }
                .padding(.horizontal)
                
            } //: VSTACK
            .navigationTitle("Learn about \(animals.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: SCROLL
    }
}

//
//#Preview {
//    
//    AnimalDetailView()
//}
