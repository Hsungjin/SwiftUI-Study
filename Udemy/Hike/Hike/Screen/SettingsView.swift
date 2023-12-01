//
//  SettingsView.swift
//  Hike
//
//  Created by 황성진 on 12/1/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - SECTION: HEADER
            Section{
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        
                        Text("Editors Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you ar actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundStyle(Color.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            // MARK: - SECTION: ICONS

            // MARK: - SECTION: ABOUT

        } //: List
    }
}

#Preview {
    SettingsView()
}
