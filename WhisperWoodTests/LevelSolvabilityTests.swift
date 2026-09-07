//
//  LevelSolvabilityTests.swift
//  WhisperWoodTests — SKELETON, belum bisa jalan.
//
//  Pengganti script Python untuk verifikasi balancing. Baru bisa diisi
//  setelah OptimalSolver (Core/Rules/OptimalSolver.swift) diporting.
//  Begitu solver-nya real, dua test ini sudah menjawab pertanyaan yang
//  sekarang harus dicek manual pakai tabel di prototype-notes.md:
//    - semua 10 level bisa diselesaikan (tidak ada anchor di dalam rintangan)
//    - satu kesalahan diagnosis tidak mematikan level manapun
//

import XCTest
@testable import WhisperWood

final class LevelSolvabilityTests: XCTestCase {

    func testAllLevelsAreSolvable() throws {
        throw XCTSkip("Menunggu OptimalSolver.solve(_:) diporting (Dijkstra 8-arah).")
    }

    func testOneMistakeIsForgivenOnEveryLevel() throws {
        throw XCTSkip("Menunggu OptimalSolver.solve(_:) diporting.")
    }
}
