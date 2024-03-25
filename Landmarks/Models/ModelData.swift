//
//  ModelData.swift
//  Landmarks
//
//  Created by 川口美咲 on 2024/03/23.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    
    var categories: [String: [Landmark]] {
        Dictionary(
            grouping: landmarks,
            by: { $0.category.rawValue }
        )
    }
}

// メインバンドルから指定されたファイル名のデータを読み込み、それをデコードして指定された型のオブジェクトに変換する
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    // アプリのメインバンドル内から指定された名前のファイルのURLを取得する
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could't find \(filename) in main bundle.")
    }
    
    do {
        // ファイルの内容を読み込む
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        // 読み込んだデータを先に指定された型Tのオブジェクトにデコードする
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
