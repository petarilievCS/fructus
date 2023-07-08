//
//  SettingsRow.swift
//  Fructus
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI

struct SettingsRow: View {
    // MARK: - PROPERTIES
    var name: String
    var value: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if let safeValue = value {
                    Text(safeValue)
                } else if let label = linkLabel, let destination = linkDestination, let URL = URL(string: "https://\(destination)")  {
                    Link(label, destination: URL)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
            }
        }
    }
}

// MARK: - PREVIEW
struct SettingsRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRow(name: "Developer", value: "John / Jane")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRow(name: "Webiste", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}

