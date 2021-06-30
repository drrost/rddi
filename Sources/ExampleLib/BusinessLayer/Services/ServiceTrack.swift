//
//  ServiceTrack.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

protocol IServiceTrack: IService {

    func getAll() throws -> [Track]
    func getFavorites() throws -> [Track]
}

class ServiceTrackImpl: IServiceTrack {

    // MARK: - Properties

    let daoTrack = DI("IDaoTrack") as! IDaoTrack

    var name: String = "IServiceTrack"

    func getAll() throws -> [Track] {
        []
    }

    func getFavorites() throws -> [Track] {

        let trackDaoModels = try daoTrack.getAll()

        return trackDaoModels.filter { $0.isFavorite}.map { Track($0) }
    }
}

extension Track {

    convenience init(_ trackDaoModel: TrackDaoModel) {
        self.init(
            trackDaoModel.id,
            trackDaoModel.title ?? "<Unknown>",
            trackDaoModel.duration,
            trackDaoModel.artist ?? "<Unknown>")
    }
}
