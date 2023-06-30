//
//  FructusApp.swift
//  Fructus
//
//  Created by Petar Iliev on 6/30/23.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("onboarded") var onboarded: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if onboarded {
                ContentView()
            } else {
                OnboardingView()
            }
        }
    }
}
