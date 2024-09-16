//
//  Course.swift
//  Course List
//
//  Created by Martin on 2024/09/16.
//

import Foundation

struct Course : Identifiable, Codable {
    var id: Int
    var image: String
    var title: String
    var subtitle: String
}
