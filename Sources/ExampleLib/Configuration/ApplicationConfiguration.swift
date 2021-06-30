//
//  ApplicationConfiguration.swift
//
//
//  Created by Rostyslav Druzhchenko on 28.06.2021.
//

import Foundation
import RDDI

class ApplicationConfiguration: IApplicationConfiguration {

    // MARK: - Properties

    var factories: [String: IDependencyFactory] = [:]

    // MARK: - Init

    public init() {

        factories["IDaoUser"] = DaoUserFactory()
        factories["IDaoTrack"] = DaoTrackFactory()

        factories["IAuthService"] = AuthServiceFactory()
        factories["IServiceTrack"] = ServiceTrackFactory()
        factories["IServiceFile"] = ServiceFileFactory()
    }
}
