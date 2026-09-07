//
//  PathMetricsTests.swift
//  WhisperWoodTests
//
//  Test SUNGGUHAN — PathSmoothing & PathMetrics sudah diporting penuh dari
//  prototipe (Core/Geometry), jadi ini bisa langsung jalan begitu target
//  test dibuat (lihat README.md di folder ini).
//

import XCTest
@testable import WhisperWood

final class PathMetricsTests: XCTestCase {

    func testLengthOfStraightLine() {
        let pts = [CGPoint(x: 0, y: 0), CGPoint(x: 3, y: 4)]
        XCTAssertEqual(PathMetrics.length(pts), 5, accuracy: 0.0001)
    }

    func testSmoothPreservesEndpoints() {
        let pts = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 2), CGPoint(x: 3, y: 0), CGPoint(x: 5, y: 1)]
        let smoothed = PathSmoothing.smooth(pts)
        XCTAssertEqual(smoothed.first, pts.first)
        XCTAssertEqual(smoothed.last, pts.last)
    }

    func testSmoothProducesDenserPolyline() {
        let pts = [CGPoint(x: 0, y: 0), CGPoint(x: 1, y: 2), CGPoint(x: 3, y: 0), CGPoint(x: 5, y: 1)]
        let smoothed = PathSmoothing.smooth(pts, subdivisions: 10)
        XCTAssertGreaterThan(smoothed.count, pts.count)
    }
}
