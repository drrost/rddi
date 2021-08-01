//
//  DaoTrack.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation

class TrackDaoModel {

    let id: String
    let isFavorite: Bool
    let duration: Double
    let title: String?
    let artist: String?
    let creationDate: Date
    let lastModifiedDate: Date

    init(_ id: String,
         _ isFavorite: Bool,
         _ duration: Double,
         _ title: String?,
         _ artist: String?,
         _ creationDate: Date,
         _ lastModifiedDate: Date) {

        self.id = id
        self.isFavorite = isFavorite
        self.duration = duration
        self.title = title
        self.artist = artist
        self.creationDate = creationDate
        self.lastModifiedDate = lastModifiedDate
    }
}

protocol IDaoTrack: IDao {

    func getAll() throws -> [TrackDaoModel]
}

class DaoTrackImpl: IDaoTrack {

    var name: String = "IDaoTrack"

    func getAll() throws -> [TrackDaoModel] {
        [
            TrackDaoModel(
                UUID().uuidString,
                false,
                234,
                "",
                nil,
                Date(),
                Date()),

            TrackDaoModel(
                UUID().uuidString,
                true,
                123,
                "One day in haven",
                "Madonna",
                Date(),
                Date()),

            TrackDaoModel(
                UUID().uuidString,
                false,
                187,
                "Yesterday",
                "John Lenon",
                Date(),
                Date()),
        ]
    }
}
