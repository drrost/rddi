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

        let daoUserFactory = DaoUserFactory()
        factories["IDaoUser"] = daoUserFactory
        factories["IAuthService"] = AuthServiceFactory(daoUserFactory)

        factories["IServiceTrack"] = ServiceTrackFactory()
    }
}
