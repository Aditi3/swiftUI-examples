//
//  PostData.swift
//  NewsReader
//
//  Created by Aditi Agrawal on 16/06/21.
//

import Foundation

struct Results: Codable {
    let hits: [Post]
}

struct Post: Codable, Identifiable {
    let objectID: String
    var id: String {
        objectID
    }
    let points: Int
    let title: String
    let url: String?
    let author: String
}
