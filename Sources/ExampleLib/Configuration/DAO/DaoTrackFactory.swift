//
//  DaoTrackFactory.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class DaoTrackFactory: IDependencyFactory {

    var isSingleton: Bool = false

    func getDependency() throws -> IDependency {
        DaoTrackImpl()
    }
}
