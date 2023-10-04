//
//  CircleImage.swift
//  LandMarks
//
//  Created by LUIS FELIPE B PEREIRA on 02/10/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(Color.white, lineWidth: 4.0)
            }
            .shadow(radius: 7.0)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
