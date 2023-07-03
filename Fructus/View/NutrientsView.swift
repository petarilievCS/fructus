//
//  NutrientsView.swift
//  Fructus
//
//  Created by Petar Iliev on 7/3/23.
//

import SwiftUI

struct NutrientsView: View {
    // MARK: PROPERTIES
    var fruit: Fruit
    private let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - PROPERTIES
    var body: some View {
        GroupBox {
            DisclosureGroup("Nutritional Value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { i in
                    Divider()
                        .padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[i])
                        } //: Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.system(.body).bold())
                        
                        Spacer(minLength: 25.0)
                        
                        Text(fruit.nutrition[i])
                            .multilineTextAlignment(.trailing)
                    }
                }
            } //: DisclouserGroup
        } //: GroupBox
    }
}

// MARK: - PREVIEW
struct NutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        NutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
