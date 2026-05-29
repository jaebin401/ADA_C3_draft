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
            NavigationLink
            {
                CheecahView()
            }
            label: {
                Text("지금 양치하러 가기 🫧")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(12)
            }
        }
    }
}

#Preview {
    HomeView()
}
