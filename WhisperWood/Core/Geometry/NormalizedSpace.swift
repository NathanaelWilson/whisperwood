//
//  NormalizedSpace.swift
//  Core/Geometry — inilah yang membuat balancing konsisten lintas device.
//
//  Aturan: Core bekerja di kotak arena 0...1 x 0...1. Presentation yang
//  mengubah sentuhan jadi koordinat ternormalisasi sebelum dikirim ke Core,
//  dan mengubah balik saat menggambar (lihat Presentation/Level/LevelLayout.swift).
//
//  Di WWWGameScene (prototipe) konversi ini tersebar di dalam scene lewat
//  `point(_:)`, `rectFor(_:)`, dan `pathCost(_:)` yang membagi panjang piksel
//  dengan `playRect.width`. Di sini dikumpulkan jadi satu tempat supaya
//  EnergyRules bisa diuji tanpa pernah membuat layar.
//

import CoreGraphics

struct ArenaSpace {
    /// Rasio lebar : tinggi arena bawah tanah. Tetap di semua device
    /// (bandingkan `playAreaAspect` di WWWGameScene, nilainya 2.1).
    let aspect: CGFloat

    /// Jarak dalam satuan "lebar arena" (0...1), bukan piksel.
    func distance(_ a: CGPoint, _ b: CGPoint) -> CGFloat {
        let dx = a.x - b.x
        let dy = (a.y - b.y) / aspect
        return hypot(dx, dy)
    }
}
