//
//  ContentView.swift
//  SimpleSetting
//
//  Created by 황성진 on 11/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isairplaneModeOn: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink(destination: Text("프로필 화면")) {
                        profileCell()
                    }
                }
                Section {
                    toggleCell(imageName: "airplane", iconColor: .orange, cellTitle: "에어플레인 모드", isairplaneModeOn: $isairplaneModeOn)
                    
                    navigationLinkCell(imageName: "wifi", cellTitle: "Wi-Fi", subTitle: "SK_WIFIGIGAD9BC_5G", iconColor: .blue, destination: { Text("와이파이 화면")})
                    
                    navigationLinkCell(imageName: "bolt", cellTitle: "Bluetooth", subTitle: "켬", iconColor: .blue, destination: { Text("블루투스 화면") })
                    
                    navigationLinkCell(imageName: "antenna.radiowaves.left.and.right", cellTitle: "셀룰러", iconColor: .green) { Text("셀룰러 화면") }
                    
                }
                
                Section {
                    navigationLinkCell(imageName: "hourglass", cellTitle: "스크린 타임", iconColor: .indigo, destination: { Text("스크린 타임")})
                }
                
                Section {
                    navigationLinkCell(imageName: "gear", cellTitle: "일반", iconColor: .gray, destination: {Text("일반 화면")})
                    navigationLinkCell(imageName: "accessibility", cellTitle: "손쉬운 사용", iconColor: .blue, destination: {Text("손쉬운 사용 화면")})
                    navigationLinkCell(imageName: "hand.raised.fill", cellTitle: "개인 정보 보호", iconColor: .blue, destination: {Text("개인 정보 보호 화면")})
                }
                
                Section {
                    navigationLinkCell(imageName: "key.fill", cellTitle: "암호", iconColor: .gray, destination: { Text("암호 화면")})
                }
            }
            .navigationTitle("설정")
        }
    }
    
    @ViewBuilder
    private func iconImage(imageName: String, iconColor: Color) -> some View {
        Image(systemName: imageName)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(iconColor)
            .foregroundStyle(.white)
            .cornerRadius(6)
    }
    
    @ViewBuilder
    private func toggleCell(imageName: String, iconColor: Color, cellTitle: String, isairplaneModeOn: Binding<Bool>) -> some View {
        HStack {
            iconImage(imageName: imageName, iconColor: iconColor)
            Toggle(cellTitle, isOn: $isairplaneModeOn)
        }
    }
    
    @ViewBuilder
    private func profileCell() -> some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                .padding(.all, 10)
                .background(.gray)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Sung Jin")
                    .font(.system(size: 24))
                    .fontWeight(.regular)
                
                Text("Apple ID, iColud, 미디어 및 구입")
                    .font(.system(size: 14))
            }
            .padding(.leading, 7)
        }
        .padding(.vertical, 10)
    }
    
    @ViewBuilder
    private func airplaneToggleCell() -> some View {
        HStack {
            Image(systemName: "airplane")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 4)
                .background(.orange)
                .foregroundStyle(.white)
                .cornerRadius(6)
            Toggle("에어플레인 모드", isOn: $isairplaneModeOn)
        }
    }
    
    @ViewBuilder
    private func wifiTextCell() -> some View {
        Image(systemName: "wifi")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(.blue)
            .foregroundStyle(.white)
            .cornerRadius(6)
        HStack {
            Text("Wi-Fi")
            Spacer()
            Text("SK_WIFIGIGAD9BC_5G")
                .foregroundStyle(.gray)
        }
    }
    
    @ViewBuilder
    private func cellularPlainCell() -> some View {
        Image(systemName: "antenna.radiowaves.left.and.right")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 20, height: 20)
            .padding(.all, 4)
            .background(.green)
            .foregroundStyle(.white)
            .cornerRadius(6)
        Text("셀룰러")
    }
    
    //    @ViewBuilder
    //    private func PlainCell<V: View>(imageName: String, cellTitle: String, iconColor: Color ,destination: @escaping () -> V) -> some View {
    //        NavigationLink(destination: destination()) {
    //            Image(systemName: imageName)
    //                .resizable()
    //                .aspectRatio(contentMode: .fit)
    //                .frame(width: 20, height: 20)
    //                .padding(.all, 4)
    //                .background(iconColor)
    //                .foregroundStyle(.white)
    //                .cornerRadius(6)
    //            Text(cellTitle)
    //        }
    //    }
    
    @ViewBuilder
    private func navigationLinkCell<V: View>(imageName: String, cellTitle: String, subTitle: String? = nil, iconColor: Color ,destination: @escaping () -> V) -> some View {
        
        if let subTitle = subTitle {
            NavigationLink {
                destination()
            } label: {
                iconImage(imageName: imageName, iconColor: iconColor)
                
                HStack {
                    Text(cellTitle)
                    Spacer()
                    Text(subTitle)
                        .foregroundStyle(.gray)
                }
            }
        } else {
            NavigationLink(destination: destination()) {
                iconImage(imageName: imageName, iconColor: iconColor)
                Text(cellTitle)
            }
        }
        
    }
}

#Preview {
    ContentView()
}
