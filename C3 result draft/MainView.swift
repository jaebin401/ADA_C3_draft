//
//  MainView.swift
//  C3 result draft
//
//  Created by Jaebin Ahn on 5/28/26.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            TabView {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house.fill")
                    }
                TipView()
                    .tabItem {
                        Label("Tip", image: "toothIcon")
                    }
                MyView()
                    .tabItem {
                        Label("My", systemImage: "person.fill")
                    }
            }.navigationTitle("Home")
        }
    }
}

#Preview {
    MainView()
}
