//
//  EnergyRules.swift
//  Core/Rules — dua jenis biaya, dipindah dari `Tunables` di WWWGameScene
//  (prototipe) dan dokumen implementasi (Day 4). Satu-satunya tempat angka
//  balancing hidup, supaya LevelSolvabilityTests bisa memakainya langsung
//  (bukan menyalinnya seperti script Dijkstra terpisah yang dipakai
//  sekarang untuk verifikasi off-line).
//

import CoreGraphics

enum EnergyRules {

    /// 1.0 lebar arena (ternormalisasi) = 20 unit energi.
    static let pathCostFactor: CGFloat = 20

    /// >12% titik jalur menimpa jalur lain -> ditolak.
    static let overlapTolerance: CGFloat = 0.12

    /// 3 diagnosis benar beruntun -> bonus energi kecil.
    static let streakGoal = 3
    static let streakBonusRatio: CGFloat = 0.10

    /// Biaya jalur: sebanding panjang kurva ternormalisasi yang digambar.
    /// `pts` dan hasil PathSmoothing.smooth sudah dalam ruang 0...1 (ArenaSpace),
    /// jadi tidak perlu tahu ukuran layar sama sekali — bandingkan dengan
    /// `pathCost(_:)` di WWWGameScene yang masih membagi dengan `playRect.width`.
    static func pathCost(normalizedLength length: CGFloat) -> CGFloat {
        length * pathCostFactor
    }

    /// Biaya sekali kirim zat. Nilai sesungguhnya ada di
    /// Core/Content/LevelLibrary.transferCost — dirujuk di sini supaya
    /// EnergyRules tetap satu-satunya tempat baca "berapa harga apa".
    static var transferCost: CGFloat { LevelLibrary.transferCost }
}
