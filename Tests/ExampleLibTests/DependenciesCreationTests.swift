//
//  DependenciesCreationTests.swift
//
//
//  Created by Rostyslav Druzhchenko on 30.06.2021.
//

import Foundation
import RDDI

import XCTest

@testable import ExampleLib

class DependenciesCreationTests: BaseTestCase {

    // MARK: - Init tests

    func testCreatesNewObject() {
        // Given
        let id = "IDaoUser"

        // When
        let dao_0 = DI(id) as! DaoUserImpl
        let dao_1 = DI(id) as! DaoUserImpl

        // Then
        XCTAssertTrue(dao_0 !== dao_1)
    }

    func testCreateTrackService() {
        // Given

        // When
        let service = DI("IServiceTrack") as! IServiceTrack
        let favorites = try! service.getFavorites()

        // Then
        XCTAssertTrue(favorites.count > 0)
        let track = favorites[0]
        XCTAssertEqual(track.title, "One day in haven")
    }
}
