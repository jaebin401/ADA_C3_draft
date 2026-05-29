//
//  HomeView.swift
//  TabView study
//
//  Created by Jaebin Ahn on 5/28/26.
//

import SwiftUI

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
}
