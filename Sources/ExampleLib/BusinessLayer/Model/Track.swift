//
//  Track.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation

class Track {

    let title: String
    let duration: Double
    let artist: String

    init(_ title: String,
         _ duration: Double,
         _ artist: String) {

        self.title = title
        self.duration = duration
        self.artist = artist
    }
}
