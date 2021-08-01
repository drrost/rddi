//
//  DaoUserFactory.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class DaoUserFactory: IDependencyFactory {

    func getDependency() throws -> IDependency {
        DaoUserImpl()
    }
}
