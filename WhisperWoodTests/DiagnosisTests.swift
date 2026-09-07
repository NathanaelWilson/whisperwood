//
//  DiagnosisTests.swift
//  WhisperWoodTests — SKELETON, belum bisa jalan.
//
//  Baru bisa diisi setelah GameEngine.apply(_:) diporting (lihat TODO di
//  Core/Rules/GameEngine.swift). Tujuannya: menguji enam kombinasi salah
//  diagnosis (ScienceCopy.missLine) menghasilkan GameEffect.wrongDelivery
//  yang benar dan hanya memotong biaya kirim, jalurnya tetap ada.
//

import XCTest
@testable import WhisperWood

final class DiagnosisTests: XCTestCase {

    func testWrongDeliveryKeepsLinkButChargesTransferCostOnly() throws {
        throw XCTSkip("Menunggu GameEngine.apply(.send(_:)) diporting dari WWWGameScene.sendResource(_:).")
    }
}
