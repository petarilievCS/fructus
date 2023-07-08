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
    
    // MARK: - STATE
    @State private var restared: Bool = false
    @AppStorage("onboarded") var onboarded: Bool = false
    
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
                    
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggling the switch in the box below. That would cause the onboarding process to start again and let you see the welcome screen.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(restared ? "Restarted".uppercased() : "Restart".uppercased(), isOn: $restared)
                            .padding()
                            .foregroundColor(.green)
                            .fontWeight(.bold)
                            .background {
                                Color(.tertiarySystemBackground)
                                    .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                            }
                    } label: {
                        SettingsLabel(text: "Customization", image: "paintbrush")
                    } //: GroupBox

                    
                    GroupBox {
                        SettingsRow(name: "Developer", value: "Petar Iliev")
                        SettingsRow(name: "Designer", value: "Petar Iliev")
                        SettingsRow(name: "Compatibility", value: "iOS 16.2")
                        SettingsRow(name: "Website", linkLabel: "petariliev.io", linkDestination: "petariliev.io")
                        SettingsRow(name: "Instagram", linkLabel: "@petarr_iliev", linkDestination: "www.instagram.com/petarr_iliev/")
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
        .onDisappear {
            onboarded = !restared
        }
    }
}

// MARK: - PROPERTIES
struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
