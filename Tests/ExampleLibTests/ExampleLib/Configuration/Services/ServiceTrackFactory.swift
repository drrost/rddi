//
//  ServiceTrackFactory.swift
//  
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

class ServiceTrackFactory: IDependencyFactory {

    func getDependency() throws -> IDependency {
        ServiceTrackImpl()
    }
}
