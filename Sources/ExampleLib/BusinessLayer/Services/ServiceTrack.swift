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
    let serviceFile = DI("IServiceFile") as! IServiceFile

    var name: String = "IServiceTrack"

    func getAll() throws -> [Track] {
        []
    }

    func getFavorites() throws -> [Track] {

        let favoriteDaoModels = try daoTrack.getAll().filter { $0.isFavorite }

        return try favoriteDaoModels.map {
            let file = try serviceFile.get($0.id)
            return Track($0, file.size)
        }
    }
}

extension Track {

    convenience init(_ trackDaoModel: TrackDaoModel, _ size: Int) {
        
        self.init(
            trackDaoModel.id,
            trackDaoModel.title ?? "<Unknown>",
            trackDaoModel.duration,
            trackDaoModel.artist ?? "<Unknown>",
            size)
    }
}
