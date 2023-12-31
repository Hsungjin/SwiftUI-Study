//
//  SettingsView.swift
//  Fruits
//
//  Created by 황성진 on 12/31/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTY
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION1
                    GroupBox (
                        label:
                           SettingLableView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("More fruits are naturally low in fat, sodium, and calories, None have cholesterol. Fruits are sources of many essential nutrients, including potassium dietary fiber, vitamins, and much more")
                                .font(.footnote)
                        }
                    }
                    // MARK: - SECTION2
                    
                    GroupBox(
                        label: SettingLableView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in the box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 4)
                            .frame(maxHeight: 80)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION3
                    
                    GroupBox (
                        label: SettingLableView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SettingRowView(name: "Developser", content: "John / Jane")
                        SettingRowView(name: "Designer", content: "Robert Petras")
                        SettingRowView(name: "Compatibility", content: "iOS 14")
                        SettingRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@RobertPetras", linkDestination: "twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI", content: "2.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    }

                }
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .navigationBarItems(
                    trailing:
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            } //: ScrollVIew
        } //: Navigation
    }
}

#Preview {
    SettingsView()
}
