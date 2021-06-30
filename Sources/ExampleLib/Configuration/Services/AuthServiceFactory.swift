//
//  ServiceAuthFactory.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class ServiceAuthFactory: IDependencyFactory {

    func getDependency() throws -> IDependency {
        ServiceAuthImpl()
    }
}
