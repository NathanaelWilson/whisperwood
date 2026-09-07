//
//  LevelLayout.swift
//  Presentation/Level — SKELETON. Belum diporting.
//
//  Zona dunia (langit / permukaan / bawah tanah) + konversi layar <-> ternormalisasi.
//  Dipindah dari WWWGameScene:
//    layoutWorld()           baris ~213-234  (playRect, undergroundTop, groundY, worldHeight)
//    point(_ n: CGPoint)     baris ~236-239  (ternormalisasi -> layar)
//    rectFor(_ n: CGRect)    baris ~241-245
//    snapRadius              baris ~247      (var, dari playRect.width)
//
//  INI TEMPAT SATU-SATUNYA yang boleh tahu ukuran piksel layar. Sentuhan
//  dikonversi ke ruang 0...1 di sini SEBELUM dikirim sebagai GameIntent —
//  Core/Geometry/NormalizedSpace tidak pernah melihat CGFloat dalam piksel.
//

import CoreGraphics

struct LevelLayout {
    private(set) var playRect: CGRect = .zero
    private(set) var undergroundTop: CGFloat = 0
    private(set) var groundY: CGFloat = 0
    private(set) var worldHeight: CGFloat = 0

    private let playAreaAspect: CGFloat = 2.1

    mutating func layout(sceneSize: CGSize) {
        // TODO: port layoutWorld().
    }

    /// Ternormalisasi (0...1) -> koordinat layar.
    func point(_ normalized: CGPoint) -> CGPoint {
        CGPoint(x: playRect.minX + normalized.x * playRect.width,
                y: playRect.minY + normalized.y * playRect.height)
    }

    /// Koordinat layar -> ternormalisasi (0...1). Kebalikan dari point(_:) —
    /// inilah yang dipakai LevelInput sebelum mengirim GameIntent.connect.
    func normalized(_ screen: CGPoint) -> CGPoint {
        guard playRect.width > 0, playRect.height > 0 else { return .zero }
        return CGPoint(x: (screen.x - playRect.minX) / playRect.width,
                       y: (screen.y - playRect.minY) / playRect.height)
    }

    var snapRadius: CGFloat { max(46, playRect.width * 0.055) }
}
