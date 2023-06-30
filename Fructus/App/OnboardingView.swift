//
//  OnboardingView.swift
//  Fructus
//
//  Created by Petar Iliev on 6/30/23.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<fruitsData.count, id: \.self) { i in
                CardView(fruit: fruitsData[i])
            }
        } //: TabView
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
