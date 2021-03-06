//
//  Track.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation

class Track {

    let id: String
    let title: String
    let duration: Double
    let artist: String
    let size: Int

    init(_ id: String,
         _ title: String,
         _ duration: Double,
         _ artist: String,
         _ size: Int) {

        self.id = id
        self.title = title
        self.duration = duration
        self.artist = artist
        self.size = size
    }
}
