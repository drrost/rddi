//
//  ServiceTrack.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation

protocol IServiceTrack: IService {

    func getAll() -> [Track]
    func getFavorites() -> [Track]
}

class ServiceTrackImpl: IServiceTrack {

    var name: String = "IServiceTrack"

    func getAll() -> [Track] {
        []
    }

    func getFavorites() -> [Track] {
        []
    }
}
