//
//  HiddenGridTests.swift
//  WhisperWoodTests
//
//  Test SUNGGUHAN — HiddenGrid sudah diporting penuh dari prototipe.
//

import XCTest
@testable import WhisperWood

final class HiddenGridTests: XCTestCase {

    func testBlockedRegionReportsBlocked() {
        var grid = HiddenGrid(rect: CGRect(x: 0, y: 0, width: 1, height: 1))
        grid.block(normalized: CGRect(x: 0.2, y: 0.2, width: 0.2, height: 0.2))
        XCTAssertTrue(grid.isBlocked(CGPoint(x: 0.3, y: 0.3)))
        XCTAssertFalse(grid.isBlocked(CGPoint(x: 0.9, y: 0.9)))
    }

    func testOutsideRectIsAlwaysBlocked() {
        let grid = HiddenGrid(rect: CGRect(x: 0, y: 0, width: 1, height: 1))
        XCTAssertTrue(grid.isBlocked(CGPoint(x: -1, y: -1)))
    }

    func testOccupyMarksNearbyPolyline() {
        var grid = HiddenGrid(rect: CGRect(x: 0, y: 0, width: 1, height: 1), cols: 10, rows: 10)
        grid.occupy(polyline: [CGPoint(x: 0.5, y: 0.5)], radius: 0)
        XCTAssertTrue(grid.isOccupied(CGPoint(x: 0.5, y: 0.5)))
        XCTAssertFalse(grid.isOccupied(CGPoint(x: 0.05, y: 0.05)))
    }
}
