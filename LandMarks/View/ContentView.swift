//
//  ContentView.swift
//  LandMarks
//
//  Created by LUIS FELIPE B PEREIRA on 28/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
            
    }
}

#Preview {
    ContentView()
        .environmentObject(ModelData())
}
