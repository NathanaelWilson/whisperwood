//
//  EnergyRulesTests.swift
//  WhisperWoodTests
//
//  Test SUNGGUHAN untuk bagian EnergyRules/ScoreRules yang sudah diporting
//  (angka-angkanya, bukan alur GameEngine.apply yang masih TODO).
//

import XCTest
@testable import WhisperWood

final class EnergyRulesTests: XCTestCase {

    func testCurvedPathCostsMoreThanStraightForSameEndpoints() {
        // jalur lurus 0.2 unit arena vs jalur berkelok yang panjangnya 0.35
        let straight = EnergyRules.pathCost(normalizedLength: 0.2)
        let curved = EnergyRules.pathCost(normalizedLength: 0.35)
        XCTAssertGreaterThan(curved, straight)
    }

    func testPathCostIsLinearInLength() {
        XCTAssertEqual(EnergyRules.pathCost(normalizedLength: 1.0), EnergyRules.pathCostFactor, accuracy: 0.0001)
    }

    func testStarThresholds() {
        XCTAssertEqual(ScoreRules.stars(remainingEnergy: 30, budget: 100), 3)
        XCTAssertEqual(ScoreRules.stars(remainingEnergy: 10, budget: 100), 2)
        XCTAssertEqual(ScoreRules.stars(remainingEnergy: 2, budget: 100), 1)
    }
}
