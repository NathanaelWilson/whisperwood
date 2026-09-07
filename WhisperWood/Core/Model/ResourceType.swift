//
//  ResourceType.swift
//  Core/Model — NOL import SpriteKit/UIKit/SwiftUI.
//
//  Dipindah dari prototipe (WWWLevelData.swift) apa adanya: sudah murni
//  Foundation, tidak menyentuh rendering sama sekali.
//

import Foundation

enum ResourceType: String, CaseIterable, Codable {

    /// Karbon dari pohon yang kena matahari ke pohon yang tertutup bayangan.
    /// Di dalam pohon diangkut sebagai sukrosa, diserahkan ke jamur sebagai
    /// glukosa & fruktosa. "Gula" adalah penyederhanaan yang sah untuk anak.
    case sugar
    /// Air dari akar dalam ke akar dangkal yang kering (redistribusi hidraulik).
    case water
    /// Fosfat (diangkut jamur sebagai polifosfat) dan nitrogen (sebagai arginin).
    case mineral
    /// Sinyal kimia peringatan hama. BUKAN pilihan di picker — hanya muncul
    /// di event hama, dan arahnya terbalik (lihat GameEngine + TreeState).
    case warning

    /// Tiga zat yang bisa dipilih anak setelah jalur tersambung.
    static let nutrients: [ResourceType] = [.sugar, .water, .mineral]

    var title: String {
        switch self {
        case .sugar:   return "Gula"
        case .water:   return "Air"
        case .mineral: return "Mineral"
        case .warning: return "Bahaya"
        }
    }
}
