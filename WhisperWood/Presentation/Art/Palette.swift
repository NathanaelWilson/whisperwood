//
//  Palette.swift
//  Presentation/Art — dipindah dari WWWTreeNode.swift (prototipe) apa
//  adanya. Ini murni konfigurasi warna, aman dipindah langsung.
//
//  "Konsistensi mengalahkan kualitas" (Challenge 6 Overview §14) — semua
//  visual pakai palet ini, jangan menaruh SKColor literal di tempat lain.
//

import SpriteKit

enum Palette {
    static let soil       = SKColor(red: 0.22, green: 0.16, blue: 0.13, alpha: 1)
    static let soilPanel  = SKColor(red: 0.14, green: 0.10, blue: 0.09, alpha: 1)
    static let soilMid    = SKColor(red: 0.30, green: 0.21, blue: 0.15, alpha: 1)
    static let surface    = SKColor(red: 0.36, green: 0.26, blue: 0.18, alpha: 1)
    static let sky        = SKColor(red: 0.52, green: 0.72, blue: 0.80, alpha: 1)
    static let skyDeep    = SKColor(red: 0.38, green: 0.60, blue: 0.72, alpha: 1)
    static let grass      = SKColor(red: 0.31, green: 0.49, blue: 0.29, alpha: 1)

    static let healthy    = SKColor(red: 0.35, green: 0.68, blue: 0.38, alpha: 1)
    static let ailing     = SKColor(red: 0.80, green: 0.45, blue: 0.33, alpha: 1)
    static let healed     = SKColor(red: 0.46, green: 0.86, blue: 0.46, alpha: 1)

    static let obstacle   = SKColor(red: 0.46, green: 0.45, blue: 0.43, alpha: 1)
    static let deadRoot   = SKColor(red: 0.36, green: 0.30, blue: 0.26, alpha: 1)
    static let barren     = SKColor(red: 0.55, green: 0.47, blue: 0.36, alpha: 1)

    static let mycelium   = SKColor(red: 0.32, green: 0.82, blue: 0.76, alpha: 1)
    static let danger     = SKColor(red: 0.93, green: 0.36, blue: 0.31, alpha: 1)
    static let ink        = SKColor(white: 0.97, alpha: 1)
    static let inkDim     = SKColor(white: 0.74, alpha: 1)
    static let bark       = SKColor(red: 0.42, green: 0.30, blue: 0.22, alpha: 1)
    static let shade      = SKColor(red: 0.16, green: 0.20, blue: 0.26, alpha: 1)
    static let leafPale   = SKColor(red: 0.90, green: 0.86, blue: 0.42, alpha: 1)
    static let bug        = SKColor(red: 0.20, green: 0.17, blue: 0.16, alpha: 1)
    static let puddle     = SKColor(red: 0.30, green: 0.52, blue: 0.72, alpha: 1)

    static func color(for r: ResourceType) -> SKColor {
        switch r {
        case .sugar:   return SKColor(red: 1.00, green: 0.82, blue: 0.32, alpha: 1)
        case .water:   return SKColor(red: 0.35, green: 0.70, blue: 0.93, alpha: 1)
        case .mineral: return SKColor(red: 0.71, green: 0.51, blue: 0.92, alpha: 1)
        case .warning: return SKColor(red: 0.95, green: 0.42, blue: 0.26, alpha: 1)
        }
    }
}
