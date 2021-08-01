//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDDI

class ApplicationConfiguration: IApplicationConfiguration {

    var name: String = "default"

    // MARK: - Properties

    var factories: [String: IDependencyFactory] = [:]

    // MARK: - Init

    public init() {

        factories["IDaoUser"] = DaoUserFactory()
        factories["IDaoTrack"] = DaoTrackFactory()

        factories["IServiceAuth"] = ServiceAuthFactory()
        factories["IServiceTrack"] = ServiceTrackFactory()
        factories["IServiceFile"] = ServiceFileFactory()
    }

    func add(_ name: String, _ dependency: IDependencyFactory) {
        factories[name] = dependency
    }
}
