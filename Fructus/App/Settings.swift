//
//  Settings.swift
//  Fructus
//
//  Created by Petar Iliev on 7/3/23.
//

import SwiftUI

struct Settings: View {
    // MARK: - ENVIRONMENT
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium and caloires. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabel(text: "Fructus", image: "info.circle")
                    } //: GroupBox
                    
                    // TODO: Section 2
                    
                    GroupBox {
                        SettingsRow(name: "Developer", value: "Petar Iliev")
                        SettingsRow(name: "Designer", value: "Petar Iliev")
                        SettingsRow(name: "Compatibility", value: "iOS 16.2")
                        SettingsRow(name: "Website", linkLabel: "petariliev.io", linkDestination: "petariliev.io")
                        SettingsRow(name: "Instagram", linkLabel: "@petarr_iliev", linkDestination: "https://www.instagram.com/petarr_iliev/")
                        SettingsRow(name: "SwiftUI", value: "4.0")
                        SettingsRow(name: "Version", value: "1.0.0")
                    } label: {
                        SettingsLabel(text: "Application", image: "apps.iphone")
                    }

                } //: VStack
                .navigationTitle(Text("Settings"))
                .navigationBarTitleDisplayMode(.large)
                .padding()
                .toolbar {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }

                }
            } //: ScrollView
        } //: NavigationView
    }
}

// MARK: - PROPERTIES
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
