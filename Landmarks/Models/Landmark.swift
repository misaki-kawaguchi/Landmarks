//
//  Landmark.swift
//  Landmarks
//
//  Created by 川口美咲 on 2024/03/23.
//

import Foundation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
