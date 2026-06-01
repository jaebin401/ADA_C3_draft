//
//  cheecahView.swift
//  C3 result draft
//
//  Created by Jaebin Ahn on 5/29/26.
//

import SwiftUI

struct CheecahView: View {
    @Environment(\.modelContext) private var context
    var body: some View {
        Text("this is cheecah view")
    }
}

#Preview {
    CheecahView()
        .modelContainer(for: CheecahData.self)
}
