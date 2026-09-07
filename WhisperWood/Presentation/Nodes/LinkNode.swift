//
//  LinkNode.swift
//  Presentation/Nodes — SKELETON. Belum diporting.
//
//  Padanan visual dari Core/Rules/LinkState (jalur yang sudah tersambung).
//  Di prototipe ini class `Link` di WWWGameScene.swift — sheath (garis tebal
//  transparan) + core (garis tipis terang di tengahnya). Dipindah dari:
//    commitPath(_:cost:from:to:warning:) — bagian yang membuat sheath & core
//      SKShapeNode (baris ~815-840 di WWWGameScene.swift)
//
//  `points` dan `cgPath` untuk render diambil dari LinkState.points (sudah
//  ternormalisasi) lewat PathMetrics.cgPath — dikonversi ke koordinat layar
//  dulu oleh Presentation/Level/LevelLayout.
//

import SpriteKit

final class LinkNode {
    let sheath: SKShapeNode
    let core: SKShapeNode

    init(path: CGPath) {
        sheath = SKShapeNode(path: path)
        core = SKShapeNode(path: path)
        // TODO: styling persis seperti commitPath(_:) di WWWGameScene.
    }

    /// Dipanggil saat LinkState.delivered berubah (benar/salah/reset ke abu-abu).
    func setDeliveredColor(_ color: SKColor) {
        core.strokeColor = color
    }
}
