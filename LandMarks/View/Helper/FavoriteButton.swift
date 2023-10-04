//
//  FavoriteButton.swift
//  LandMarks
//
//  Created by LUIS FELIPE B PEREIRA on 04/10/23.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button(action: {
            isSet.toggle()
        }, label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        })
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
