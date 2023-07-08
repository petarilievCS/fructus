//
//  ContentView.swift
//  Fructus
//
//  Created by Petar Iliev on 6/30/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - STATE
    @State private var isShowingSettings: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitsData.shuffled()) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            } //: List
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSettings = true
                    }, label: {
                        Image(systemName: "slider.horizontal.3")
                    }) //: Button
                    .sheet(isPresented: $isShowingSettings, content: {
                        Settings()
                    })
            )
        } //: NavigationView
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
