//
//  OurButton.swift
//  C3 result draft
//
//  Created by Jaebin Ahn on 5/29/26.
//

// NavButton.swift

import SwiftUI

struct CheecahButton<Destination: View>: View {
    
    let title: String
    @ViewBuilder let destination: () -> Destination
    
    var body: some View {
        NavigationLink(destination: destination()) {
            label
        }
        // .buttonStyle(.plain)
    }
    
    // MARK: - Subviews
    private var label: some View {
        HStack {
            Spacer()
            Text(title)
                .font(.body)
                .foregroundStyle(.black)
            Spacer()
        }
        .padding()
        .background(.regularMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 40))
    }
}

#Preview {
    NavigationStack {
        CheecahButton(title: "치카") {
            CheecahView()
        }
    }
}
