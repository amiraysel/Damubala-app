//
//  damubala.swift
//  DamuBala
//
//  Created by Айсель on 12.02.2025.
//

import SwiftUI

struct RectangleImage: View {
    var body: some View {
        Image("Damubala")
            .resizable()
            .scaledToFit()
            .frame(height: 280)
            .blendMode(.multiply)
    }
}

#Preview {
    RectangleImage()
}


