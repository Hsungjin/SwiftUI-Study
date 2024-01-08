//
//  StorageView.swift
//  SwiftUIStorage
//
//  Created by 황성진 on 1/8/24.
//

import SwiftUI

struct StorageView: View {

    @ObservedObject var storageManager = StorageManager.shared
    @State var image = UIImage()
    @State var showSheet = false

    var body: some View {
        VStack {
            HStack {
                Image(uiImage: self.image)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .aspectRatio(contentMode: .fill)
                    .background(.black.opacity(0.2))
                    .clipShape(Circle())

                Text("Change photo")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .frame(height: 50)
                    .onTapGesture {
                        showSheet = true
                    }
            }
            .padding(.horizontal, 20)
            .sheet(isPresented: $showSheet) {

                ImagePicker(sourceType: .photoLibrary, selectedImage: $image)
            }
            .onChange(of: image) {
                storageManager.upload(image: image)
            }
            
            Button {
                storageManager.listAllFiles()
            } label: {
                Text("Load")
            }
            
            Spacer()
            
            List {
                ForEach(storageManager.images, id: \.self) { simage in
                    HStack {
                        Image(uiImage: simage.image)
                            .resizable()
                            .frame(width: 60, height: 60)
                            .aspectRatio(contentMode: .fill)
                            .background(.black.opacity(0.2))
                            .clipShape(Circle())
                            Text(simage.name)
                            Text(simage.fullPath)
                    }
                    VStack(alignment: .center) {
                        Button {
                            Task {
                                await storageManager.deleteFile(simage.name)
                            }
                        } label: {
                            Text("Delete this image")
                                .foregroundStyle(.black)
                                .fontWeight(.bold)
                                .padding()
                                .background(Color.teal)
                        }
                    }
                }
            }
        }
    }
    
}

#Preview {
    StorageView()
}
