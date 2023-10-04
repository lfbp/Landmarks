//
//  LandmarkList.swift
//  LandMarks
//
//  Created by LUIS FELIPE B PEREIRA on 02/10/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView(sidebar: {
            
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: {
                        LandmarkDetail(landmark: landmark)
                    }, label: {
                        LandmarkRow(landmark: landmark)
                    })
                }
            }
            .navigationTitle("Landmarks")
        }, detail: {
            Text("Selected Landmark")
        })
        
    }
}

#Preview {
    LandmarkList()
        .environmentObject(ModelData())
}
