//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 川口美咲 on 2024/03/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
