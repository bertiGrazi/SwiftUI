//
//  Comic.swift
//  MarvelAPI
//
//  Created by Grazielli Berti on 07/02/23.
//

import SwiftUI

struct APIComicResult: Codable {
    var data: APIComicData
}

struct APIComicData: Codable {
    var count: Int
    var results: [Comic]
}

struct Comic: Identifiable, Codable {
    var id: Int
    var title: String
    var description: String?
    var thumbnail: [String:String]
    var urls: [[String: String]]
}

