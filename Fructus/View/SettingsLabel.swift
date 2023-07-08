//
//  SettingsLabel.swift
//  Fructus
//
//  Created by Petar Iliev on 7/3/23.
//

import SwiftUI

struct SettingsLabel: View {
    // MARK: - PROPERTIES
    var text: String
    var image: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(text.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: image)
        }
    }
}

// MARK: - PREVIEW
struct SettingsLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabel(text: "Fructus", image: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
