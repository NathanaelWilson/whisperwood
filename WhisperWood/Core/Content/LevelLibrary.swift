//
//  LevelLibrary.swift
//  Core/Content — agregator. Tiap musim dipecah ke file sendiri
//  (Levels+Semi/Panas/Gugur/Dingin.swift) supaya tetap muat di satu layar.
//
//  Prinsip dari dokumen arsitektur teknis: level adalah DATA, bukan kode.
//  Menambah level berarti menambah satu entri ke salah satu extension musim.
//

import CoreGraphics

enum LevelLibrary {

    /// Biaya sekali kirim zat. Terpisah dari biaya jalur:
    /// salah diagnosis hanya menghanguskan ini, jalurnya tetap ada.
    /// (lihat Core/Rules/EnergyRules.swift)
    static let transferCost: CGFloat = 4.0

    static let all: [LevelSpec] = semi + panas + gugur + dingin
}
