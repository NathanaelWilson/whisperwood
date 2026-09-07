//
//  PestSequence.swift
//  Presentation/Level — SKELETON. Belum diporting.
//
//  Dua babak hama: (1) tap kutu sampai bersih, (2) tarik sinyal bahaya ke
//  tetangga. Dipindah dari WWWGameScene:
//    startPestEvent(_:)   baris ~1108-1127  (sebar kutu di sekitar tajuk,
//                          target tap >= 44pt di layar terkecil — lihat
//                          audit ukuran layar di prototype-notes.md)
//    tapBug(at:)          baris ~1090-1105
//    beginWarningBeat()   baris ~1129-1136
//
//  Sebaiknya jadi "mode di dalam Level, bukan scene terpisah" (dokumen
//  arsitektur teknis §15) supaya state level tidak perlu disinkronkan
//  antar scene.
//

import SpriteKit

final class PestSequence {
    private(set) var bugs: [SKNode] = []

    func begin(at treeCrownWorldPosition: CGPoint, bugCount: Int, crownDiameter: CGFloat, in layer: SKNode) {
        // TODO: port startPestEvent(_:) bagian sebar kutu.
    }

    /// Return true kalau semua kutu sudah bersih.
    func tap(at location: CGPoint, in layer: SKNode) -> Bool {
        // TODO: port tapBug(at:).
        false
    }
}
