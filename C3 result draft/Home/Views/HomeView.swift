//
//  HomeView.swift
//  TabView study
//
//  Created by Jaebin Ahn on 5/28/26.
//

import SwiftUI
import SwiftData

struct HomeView: View {
    
    var body: some View {
        VStack() {
            Spacer()
            CheecahButton(title: "치카") {
                CheecahView()
            }
        }
    }
}

#Preview {
    HomeView()
        .modelContainer(for: CheecahData.self)
}
