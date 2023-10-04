//
//  LandMarksApp.swift
//  LandMarks
//
//  Created by LUIS FELIPE B PEREIRA on 28/09/23.
//

import SwiftUI

@main
struct LandMarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
